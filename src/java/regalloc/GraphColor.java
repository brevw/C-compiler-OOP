package regalloc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import java.util.stream.Collectors;

import gen.asm.AssemblyItem;
import gen.asm.AssemblyProgram;
import gen.asm.AssemblyTextItem;
import gen.asm.Directive;
import gen.asm.Instruction;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.AssemblyProgram.TextSection;
import regalloc.InterferenceGraph.Node;
import util.Utils;

public class GraphColor {
    private final ArrayList<Register.Arch> availableRegs;
    private final AssemblyProgram asmProgWithVirtualRegs;
    private List<InterferenceGraph> iGraphs;
    public Set<Label> newLabels = new HashSet<>();

    /**
     * Create a new graph coloring algorithm
     * @param availableRegs the available registers
     * @param asmProgWithVirtualRegs the assembly program with virtual registers
     * @param iGraphs the interference graphs where the i-th graph corresponds to the i-th section (function) in the assembly program
     */
    public GraphColor(List<Register.Arch> availableRegs, AssemblyProgram asmProgWithVirtualRegs, List<InterferenceGraph> iGraphs) {
        assert availableRegs.size() >= 2;
        this.availableRegs = new ArrayList<>(availableRegs);
        this.asmProgWithVirtualRegs = asmProgWithVirtualRegs;
        this.iGraphs = iGraphs;
    }

    public void transformToPhysicalASMProgram() {
        for (int j = 0; j < iGraphs.size(); j++)
            colorGraph(j);

        // rebuild instructions with physical registers
        HashMap<Register, Register> regMapping = new HashMap<>();
        iGraphs.forEach(ig -> {
            ig.getNodes().forEach(n -> {
                regMapping.put(n.reg, n.archReg);
            });
        });

        applyColoring(regMapping);

    }


    /**
     * Color the interference graph of a function
     * @param iGraph the interference graph
     */
    private void colorGraph(int sectionIndex) {
        boolean needRerun = true;
        while (needRerun) {
            Optional<Node> spilledNode = attemptColorGraph(iGraphs.get(sectionIndex));
            needRerun = spilledNode.isPresent();
            spilledNode.ifPresent(n -> {
                TextSection newSection = new TextSection();
                Register.Virtual spilledReg = n.reg;
                Label spillLabel = Label.create(n.reg.name + "_spill");
                newLabels.add(spillLabel);
                // emit the new label
                this.asmProgWithVirtualRegs.dataSection.emit(spillLabel);
                this.asmProgWithVirtualRegs.dataSection.emit(new Directive(Utils.SPACE_DIRECTIVE + Utils.WORD_SIZE));

                // modify the text section to spill the register
                Map<Register, Register> regMap = new HashMap<>();
                this.asmProgWithVirtualRegs.textSections.get(sectionIndex).items.forEach(item -> {
                    regMap.clear();
                    switch (item) {
                        case AssemblyTextItem it -> newSection.emit(it);
                        case Instruction insn -> {
                            // handle the uses
                            if (insn.uses().contains(spilledReg)) {
                                Register.Virtual newVirtualReg = Register.Virtual.create();
                                newSection.emit(OpCode.LA, newVirtualReg, spillLabel);
                                newSection.emit(OpCode.LW, newVirtualReg, newVirtualReg, 0);
                                regMap.put(spilledReg, newVirtualReg);
                            }

                            // handle the def
                            boolean defIsSpilled = insn.def() != null && insn.def() == spilledReg;
                            if (defIsSpilled && !regMap.containsKey(spilledReg)) {
                                regMap.put(spilledReg, Register.Virtual.create());
                            }
                            newSection.emit(insn.rebuild(regMap));
                            if (defIsSpilled) {
                                Register.Virtual newVirtualReg3 = Register.Virtual.create();
                                newSection.emit(OpCode.LA, newVirtualReg3, spillLabel);
                                newSection.emit(OpCode.SW, regMap.get(spilledReg), newVirtualReg3, 0);
                            }
                        }
                        default -> throw new RuntimeException("Unexpected item type: " + item.getClass());
                    }

                });

                this.asmProgWithVirtualRegs.textSections.set(sectionIndex, newSection);
                // NOTE: need to update igraphs
                ArrayList<ArrayList<CFGraph.Node>> cfgs = new CFGraph(this.asmProgWithVirtualRegs).generateProgramCFGs();
                this.iGraphs = InterferenceGraph.buildInterferenceGraphFromCFGs(cfgs);
            });

        }
    }


    private void applyColoring(Map<Register, Register> vrArchMap) {
        // rebuild instructions in the text section
        for (int i = 0; i < this.asmProgWithVirtualRegs.textSections.size(); ++i) {
            TextSection section = this.asmProgWithVirtualRegs.textSections.get(i);
            final AssemblyProgram.TextSection newSection = new TextSection();
            Set<Register.Arch> usedArchRegs = new HashSet<>();
            Set<Label> usedLabels = new HashSet<>();
            AtomicBoolean startCapturing = new AtomicBoolean(false);
            section.items.forEach(item -> {
                switch (item) {
                    case AssemblyTextItem it -> newSection.emit(it);
                    case Instruction insn -> {
                        if (insn == Instruction.Nullary.pushRegisters){
                            startCapturing.set(true);
                            newSection.emit(insn);
                        } else if (insn == Instruction.Nullary.popRegisters){
                            startCapturing.set(false);
                            newSection.emit(insn);
                        } else {
                            Instruction newInsn = insn.rebuild(vrArchMap);
                            newSection.emit(newInsn);
                            if (startCapturing.get()){
                                usedArchRegs.addAll(newInsn.registers().stream().filter(r -> this.availableRegs.contains(r)).map(r -> (Register.Arch)r).collect(Collectors.toSet()));
                                if (insn instanceof Instruction.LoadAddress la && newLabels.contains(la.label)){
                                    usedLabels.add(la.label);
                                }
                            }
                        }
                    }
                    default -> throw new RuntimeException("Unexpected item type: " + item.getClass());
                }
            });

            ArrayList<Register.Arch> usedArchRegsList = new ArrayList<>(usedArchRegs);
            ArrayList<Label> usedLabelsList = new ArrayList<>(usedLabels);
            final AssemblyProgram.TextSection newSection2 = new TextSection();

            // registers that can be used for pushing and popping
            Register.Arch pushPopReg1 = usedArchRegsList.size() > 0 ? usedArchRegsList.get(0) : null;
            Register.Arch pushPopReg2 = usedArchRegsList.size() > 1 ? usedArchRegsList.get(1) : null;

            newSection.items.forEach(item -> {
                switch (item) {
                    case AssemblyTextItem it -> newSection2.emit(it);
                    case Instruction insn -> {
                        if (insn == Instruction.Nullary.pushRegisters){
                            newSection2.emit("Original instruction: "+insn);
                            // push registers and spilled global variables
                            usedArchRegsList.forEach(r -> {
                                newSection2.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -Utils.WORD_SIZE);
                                newSection2.emit(OpCode.SW, r, Register.Arch.sp, 0);
                            });
                            usedLabelsList.forEach(l -> {
                                newSection2.emit(OpCode.LA, pushPopReg1, l);
                                newSection2.emit(OpCode.LW, pushPopReg1, pushPopReg1, 0);
                                newSection2.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -Utils.WORD_SIZE);
                                newSection2.emit(OpCode.SW, pushPopReg1, Register.Arch.sp, 0);
                            });
                        } else if (insn == Instruction.Nullary.popRegisters){
                            newSection2.emit("Original instruction: "+insn);
                            // pop registers and spilled global variables
                            usedLabelsList.reversed().forEach(l -> {
                                newSection2.emit(OpCode.LW, pushPopReg1, Register.Arch.sp, 0);
                                newSection2.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, Utils.WORD_SIZE);
                                newSection2.emit(OpCode.LA, pushPopReg2, l);
                                newSection2.emit(OpCode.SW, pushPopReg1, pushPopReg2, 0);
                            });
                            usedArchRegsList.reversed().forEach(r -> {
                                newSection2.emit(OpCode.LW, r, Register.Arch.sp, 0);
                                newSection2.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, Utils.WORD_SIZE);
                            });
                        } else {
                            newSection2.emit(insn);
                        }
                    }
                    default -> throw new RuntimeException("Unexpected item type: " + item.getClass());
                }

            });
        this.asmProgWithVirtualRegs.textSections.set(i, newSection2);
        }
    }


    /**
     * Color the graph using the Chaitin algorithm
     * @param iGraph the interference graph
     * @return an optional node that needs to be spilled, or empty if no node needs to be spilled
     */
    private Optional<Node> attemptColorGraph(InterferenceGraph iGraph) {
        Stack<InterferenceGraph.Node> stack = new Stack<>();

        // keep deactivating nodes with degree less than the number of available colors (registers)
        int graphSize = iGraph.getNodes().size();
        Function<InterferenceGraph.Node, Integer> heuristicCost = n -> (n.uses + n.defs);

        int processedNodes = 0;
        for (; processedNodes < graphSize; ++processedNodes) {
            List<InterferenceGraph.Node> cantidates = iGraph.allActiveNodes().stream().filter(n -> n.degree < availableRegs.size()).toList();
            if (cantidates.size() == 0) {
                // spill the node with a heuristic that minimizes the cost
                InterferenceGraph.Node spillNode = iGraph.allActiveNodes().stream().min((n1, n2) -> Integer.compare(heuristicCost.apply(n1), heuristicCost.apply(n2))).get();
                return Optional.of(spillNode);
            } else {
                // deactivate a candidate node
                InterferenceGraph.Node candidate = cantidates.stream().findFirst().get();
                iGraph.deactivateNode(candidate);
                stack.push(candidate);
            }
        }

        assert stack.size() == graphSize;
        // assign colors to the nodes on the stack
        while (!stack.isEmpty()) {
            InterferenceGraph.Node node = stack.pop();
            node.active = true;
            Set<Register.Arch> usedColors = new HashSet<>();
            node.getActiveAdj().stream().forEach(n -> {
                if (n.archReg != null) {
                    usedColors.add(n.archReg);
                }
            });
            node.archReg = availableRegs.stream().filter(c -> !usedColors.contains(c)).findFirst().get();
        }

        return Optional.empty();

    }
}
