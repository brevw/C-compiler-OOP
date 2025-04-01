package regalloc;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import java.util.stream.Collectors;

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
    public final AssemblyProgram asmProgWithVirtualRegs;
    public ArrayList<InterferenceGraph> iGraphs;
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
        this.iGraphs = new ArrayList<>(iGraphs);
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

        virtualPhysical(regMapping);
    }


    /**
     * Color the interference graph of a function
     * @param iGraph the interference graph
     * @param n the node to be spilled
     */
    private void handleSpill(int sectionIndex, Node n, ArrayList<Register.Virtual> vrUsedForSpilling) {
        InterferenceGraph iGraph = iGraphs.get(sectionIndex);

        TextSection newSection = new TextSection();
        Register.Virtual spilledReg = n.reg;
        Label spillLabel = Label.create(n.reg.name + "_spill");
        newLabels.add(spillLabel);
        // emit the new label
        this.asmProgWithVirtualRegs.dataSection.emit(spillLabel);
        this.asmProgWithVirtualRegs.dataSection.emit(new Directive(Utils.SPACE_DIRECTIVE + Utils.WORD_SIZE));

        // modify the text section to spill the register
        Map<Register, Register> regMap = new HashMap<>();
        // NOTE: remove later
        if (iGraph.nodes.size() == this.asmProgWithVirtualRegs.textSections.get(sectionIndex).items.size()) {
            throw new RuntimeException("nbr of nodes and instructions mismatch");
        }
        this.asmProgWithVirtualRegs.textSections.get(sectionIndex).items.forEach(item -> {
            regMap.clear();
            switch (item) {
                case AssemblyTextItem it -> newSection.emit(it);
                case Instruction insn -> {
                    boolean loadSpilled = insn.uses().contains(spilledReg);
                    boolean storeSpilled = insn.def() != null && insn.def() == spilledReg;

                    // handle the uses
                    if (loadSpilled) {
                        Register.Virtual tempLoadReg = Register.Virtual.create();
                        vrUsedForSpilling.add(tempLoadReg);

                        // update the interference graph
                        newSection.emit(OpCode.LA, tempLoadReg, spillLabel);
                        newSection.emit(OpCode.LW, tempLoadReg, tempLoadReg, 0);
                        regMap.put(spilledReg, tempLoadReg);
                    }

                    // handle the def
                    if (storeSpilled && !regMap.containsKey(spilledReg)) {
                        Register.Virtual tempIntermediateReg = Register.Virtual.create();
                        vrUsedForSpilling.add(tempIntermediateReg);

                        regMap.put(spilledReg, tempIntermediateReg);
                    }

                    // rebuild the instruction, add to CFG and program
                    Instruction newInsn = insn.rebuild(regMap);
                    newSection.emit(newInsn);

                    if (storeSpilled) {
                        Register.Virtual tempStoreReg = Register.Virtual.create();
                        vrUsedForSpilling.add(tempStoreReg);

                        newSection.emit(OpCode.LA, tempStoreReg, spillLabel);
                        newSection.emit(OpCode.SW, regMap.get(spilledReg), tempStoreReg, 0);
                    }
                }
                default -> throw new RuntimeException("Unexpected item type: " + item.getClass());
            }

        });
        // update the program code
        this.asmProgWithVirtualRegs.textSections.set(sectionIndex, newSection);

        // update the interference graph
        ArrayList<CFGraph.Node> newCFG = new CFGraph(this.asmProgWithVirtualRegs)
                                                .generateProgramFunctionCFGWihtoutRemovingDeadInstructions(newSection);
        var newIG = new InterferenceGraph(newCFG);
        newIG.buildInterferenceGraphFromFunctionCFG();
        vrUsedForSpilling.forEach(r -> {
            newIG.nodesMapping.get(r).canSpill = false;
        });
        iGraphs.set(sectionIndex, newIG);
    }


    private void virtualPhysical(Map<Register, Register> vrArchMap) {
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
    private void colorGraph(int index) {
        ArrayList<Register.Virtual> vrUsedForSpilling = new ArrayList<>();
        Stack<InterferenceGraph.Node> stack = new Stack<>();

        int oldNbrRegs = this.iGraphs.get(index).nodesMapping.size();
        // keep deactivating nodes with degree less than the number of available colors (registers)
        Function<InterferenceGraph.Node, Float> heuristicCost = n -> (n.uses + n.defs) / (float) n.degree;
        Comparator<InterferenceGraph.Node> heuristicCostComparator = (n1, n2) -> Float.compare(heuristicCost.apply(n1), heuristicCost.apply(n2));

        while (stack.size() < this.iGraphs.get(index).nodesMapping.size()) {
            List<InterferenceGraph.Node> cantidates = this.iGraphs.get(index).allActiveNodes().stream().filter(n -> n.degree < availableRegs.size()).toList();
            if (cantidates.size() == 0) {
                // spill the node with a heuristic that minimizes the cost
                InterferenceGraph.Node spillNode;
                var spillNodeTry = this.iGraphs.get(index).allActiveNodes()
                        .stream()
                        .filter(n -> n.canSpill)
                        .min(heuristicCostComparator);
                if (spillNodeTry.isPresent()) {
                    spillNode = spillNodeTry.get();
                } else {
                    spillNode = this.iGraphs.get(index).allActiveNodes().stream().min(heuristicCostComparator).get();
                }
                handleSpill(index, spillNode, vrUsedForSpilling);
                stack.clear();
            } else {
                // deactivate a candidate node
                cantidates.forEach(candidate -> {
                    this.iGraphs.get(index).deactivateNode(candidate);
                    stack.push(candidate);
                });
            }
        }

        if (stack.size() != oldNbrRegs) {
            System.err.println("nbr of registers: "+ ((float) (stack.size() - oldNbrRegs) / oldNbrRegs * 100)  + "% increase");
        }
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
    }
}
