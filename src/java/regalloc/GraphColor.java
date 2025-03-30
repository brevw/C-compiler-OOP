package regalloc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
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
            colorGraph(iGraphs.get(j));

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
    private void handleSpill(int sectionIndex, Node n1) {
        InterferenceGraph iGraph = iGraphs.get(sectionIndex);
        Optional<Node> spilledNode = Optional.of(n1);
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
            AtomicInteger j = new AtomicInteger(0);
            // NOTE: remove later
            if (iGraph.nodes.size() == this.asmProgWithVirtualRegs.textSections.get(sectionIndex).items.size()) {
                throw new RuntimeException("nbr of nodes and instructions mismatch");
            }
            this.asmProgWithVirtualRegs.textSections.get(sectionIndex).items.forEach(item -> {
                regMap.clear();
                switch (item) {
                    case AssemblyTextItem it -> newSection.emit(it);
                    case Instruction insn -> {
                        CFGraph.Node nCFG = iGraph.nodes.get(j.get());
                        nCFG.liveOut.remove(spilledReg);
                        // NOTE: remove later
                        if (nCFG.instr != insn) {
                            System.err.println(j.get());
                            System.err.println("nCFG.instr: "+nCFG.instr);
                            System.err.println("insn: "+insn);
                            throw new RuntimeException("Instruction mismatch");
                        }
                        // handle the uses
                        Register.Virtual newVirtualReg = null;
                        if (insn.uses().contains(spilledReg)) {
                            newVirtualReg = Register.Virtual.create();

                            // update the interference graph
                            Node newNode = new Node(newVirtualReg);
                            newNode.canSpill = false;
                            iGraph.nodesMapping.put(newVirtualReg, newNode);
                            List<Register.Virtual> interferenceWith = new ArrayList<>(nCFG.liveOut);
                            interferenceWith.addAll(nCFG.use());
                            // add the new node to the interference graph (don't forget the edges with the other
                            // spilled registers that are used for the same instruction)
                            interferenceWith.stream()
                                .map(iGraph::vrToNode)
                                .forEach(with -> {
                                    newNode.adj.add(with);
                                    newNode.degree += 1;
                                    with.adj.add(newNode);
                                    with.degree += 1;
                                });

                            CFGraph.Node newCFGNode = null;

                            newSection.emit(OpCode.LA, newVirtualReg, spillLabel);
                            newCFGNode = new CFGraph.Node((Instruction)newSection.items.getLast(), null);
                            iGraph.nodes.add(j.getAndIncrement(), newCFGNode);

                            newSection.emit(OpCode.LW, newVirtualReg, newVirtualReg, 0);
                            newCFGNode = new CFGraph.Node((Instruction)newSection.items.getLast(), null);
                            iGraph.nodes.add(j.getAndIncrement(), newCFGNode);
                            regMap.put(spilledReg, newVirtualReg);
                        }

                        // handle the def
                        boolean defIsSpilled = insn.def() != null && insn.def() == spilledReg;
                        Register.Virtual newVirtualReg2 = null;
                        if (defIsSpilled && !regMap.containsKey(spilledReg)) {
                        newVirtualReg2 = Register.Virtual.create();
                            regMap.put(spilledReg, newVirtualReg2);
                            Node newNode = new Node(newVirtualReg2);
                            newNode.canSpill = false;
                            iGraph.nodesMapping.put(newVirtualReg2, newNode);
                            List<Register.Virtual> interferenceWith = new ArrayList<>(nCFG.liveOut);
                            interferenceWith.addAll(nCFG.use());
                            interferenceWith.stream()
                                .map(iGraph::vrToNode)
                                .forEach(with -> {
                                    newNode.adj.add(with);
                                    newNode.degree += 1;
                                    with.adj.add(newNode);
                                    with.degree += 1;
                                });
                        }

                        if (newVirtualReg2 == null) {
                            newVirtualReg2 = newVirtualReg;
                        }

                        // rebuild the instruction, add to CFG and program
                        Instruction newInsn = insn.rebuild(regMap);
                        CFGraph.Node newCFGNode = new CFGraph.Node(newInsn, null);
                        iGraph.nodes.add(j.getAndIncrement(), newCFGNode);
                        newCFGNode.liveOut.addAll(nCFG.liveOut);
                        if (newVirtualReg2 != null) {
                            newCFGNode.liveOut.add(newVirtualReg2); }
                        iGraph.nodes.remove(j.get());
                        newSection.emit(newInsn);

                        Register.Virtual newVirtualReg3 = null;
                        if (defIsSpilled) {
                            newVirtualReg3 = Register.Virtual.create();

                            Node newNode = new Node(newVirtualReg3);
                            newNode.canSpill = false;
                            iGraph.nodesMapping.put(newVirtualReg3, newNode);
                            List<Register.Virtual> interferenceWith = new ArrayList<>(nCFG.liveOut);
                            interferenceWith.addAll(nCFG.use());
                            if (newVirtualReg2 != null) {
                                interferenceWith.add(newVirtualReg2);
                            }
                            // add the new node to the interference graph (don't forget the edges with the other
                            // spilled registers that are used for the same instruction)
                            interferenceWith.stream()
                                .map(iGraph::vrToNode)
                                .forEach(with -> {
                                    newNode.adj.add(with);
                                    newNode.degree += 1;
                                    with.adj.add(newNode);
                                    with.degree += 1;
                                });

                            CFGraph.Node newCFGNode1 = null;

                            newSection.emit(OpCode.LA, newVirtualReg3, spillLabel);
                            newCFGNode1 = new CFGraph.Node((Instruction)newSection.items.getLast(), null);
                            iGraph.nodes.add(j.getAndIncrement(), newCFGNode1);

                            newSection.emit(OpCode.SW, regMap.get(spilledReg), newVirtualReg3, 0);
                            newCFGNode1 = new CFGraph.Node((Instruction)newSection.items.getLast(), null);
                            iGraph.nodes.add(j.getAndIncrement(), newCFGNode1);
                        }

                        if (newVirtualReg3 != null) {
                            newCFGNode.liveOut.add(newVirtualReg3);
                        }
                    }
                    default -> throw new RuntimeException("Unexpected item type: " + item.getClass());
                }

            });

            this.asmProgWithVirtualRegs.textSections.set(sectionIndex, newSection);
            // NOTE: need to update igraphs
            //ArrayList<ArrayList<CFGraph.Node>> cfgs = new CFGraph(this.asmProgWithVirtualRegs).generateProgramCFGs();
            //this.iGraphs = InterferenceGraph.buildInterferenceGraphFromCFGs(cfgs);

            // remove spill node from the interference graph
            var node = iGraph.nodesMapping.remove(spilledReg);
            node.adj.forEach(n2 -> {
                n2.adj.remove(node);
                n2.degree -= 1;
            });
        });
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
    private void colorGraph(InterferenceGraph iGraph) {
        Stack<InterferenceGraph.Node> stack = new Stack<>();

        int oldNbrRegs = iGraph.nodesMapping.size();
        // keep deactivating nodes with degree less than the number of available colors (registers)
        Function<InterferenceGraph.Node, Integer> heuristicCost = n -> (n.uses + n.defs);

        while (stack.size() < iGraph.nodesMapping.size()) {
            List<InterferenceGraph.Node> cantidates = iGraph.allActiveNodes().stream().filter(n -> n.degree < availableRegs.size()).toList();
            if (cantidates.size() == 0) {
                // spill the node with a heuristic that minimizes the cost
                InterferenceGraph.Node spillNode;
                var spillNodeTry = iGraph.allActiveNodes()
                        .stream()
                        .filter(n -> n.canSpill)
                        .min((n1, n2) -> Integer.compare(heuristicCost.apply(n1), heuristicCost.apply(n2)));
                if (spillNodeTry.isPresent()) {
                    spillNode = spillNodeTry.get();
                } else {
                    spillNode = iGraph.allActiveNodes().stream().min((n1, n2) -> Integer.compare(heuristicCost.apply(n1), heuristicCost.apply(n2))).get();
                }
                handleSpill(iGraphs.indexOf(iGraph), spillNode);
            } else {
                // deactivate a candidate node
                cantidates.forEach(candidate -> {
                    iGraph.deactivateNode(candidate);
                    stack.push(candidate);
                });
            }
        }

        // NOTE: remove later
        if (stack.size() != iGraph.nodesMapping.size()) {
            throw new RuntimeException("All nodes are on the stack");
        }
        if (stack.size() != oldNbrRegs) {
            System.err.println("nbr of registers: "+ ((float) stack.size() / oldNbrRegs * 100)  + "% increase");
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
