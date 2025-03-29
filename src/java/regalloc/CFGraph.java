package regalloc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Queue;
import java.util.Set;

import gen.asm.AssemblyItem;
import gen.asm.AssemblyProgram;
import gen.asm.AssemblyTextItem;
import gen.asm.Instruction;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.AssemblyProgram.TextSection;
import gen.asm.Instruction.BinaryBranch;
import gen.asm.Instruction.Jump;
import gen.asm.Instruction.JumpRegister;
import gen.asm.Instruction.UnaryBranch;

public class CFGraph {

    /**
     * Node in the control flow graph.
     */
    public static class Node {
        final Label label; // can be null (indicating an instruction that can't be the target of a branch)
        final Instruction instr; // can be null (indicating a dummy node)

        final Set<Register.Virtual> liveIn = new HashSet<>();  // to be filled in the liveness analysis
        final Set<Register.Virtual> liveOut = new HashSet<>(); // to be filled in the liveness analysis
        boolean visited = false;                               // to be used by the liveness analysis

        final List<Node> pred = new ArrayList<>();
        final List<Node> succ = new ArrayList<>();

        public Node(Instruction instr, Label label) {
            this.label = label;
            this.instr = instr;
        }

        /**
         * Get the virtual registers used by the instruction represented by the node.
         */
        public List<Register.Virtual> use() {
            return instr.uses().stream().filter(u -> u.isVirtual()).map(Register.Virtual.class::cast).toList();
        }

        /**
         * Get the virtual register defined by the instruction represented by the node.
         */
        public Optional<Register.Virtual> def() {
            Register reg = instr.def();
            return reg != null && reg.isVirtual() ? Optional.of((Register.Virtual) reg) : Optional.empty();
        }
    }

    private final AssemblyProgram asmProgram;
    private final Map<Label, Node> labelToNode = new HashMap<>();

    public CFGraph(AssemblyProgram asmProgram) {
        this.asmProgram = asmProgram;
    }


    /**
     * Generate the control flow graph for each function in the program.
     * Dead instructions are removed from the program.
     * Liveness analysis is performed on the graph.
     * the assembly program is modified in place.
     */
    public ArrayList<ArrayList<Node>> generateProgramCFGs() {
        // i_th List of nodes corresponds to the i_th section (function) in the program
        ArrayList<ArrayList<Node>> cfgs = generateProgramCFGsDoNotTouchDeadCode();
        int i = 0;
        for (ArrayList<Node> nodes : cfgs) {
            liveAnalysisWhileRemovingDeadInstructionsFromFunctionCFG(nodes, asmProgram.textSections.get(i++));
        }
        return cfgs;
    }

    /**
     * Remove dead instructions from the CFG of a function.
     * Can only be called after the liveness analysis has been performed.
     */
    private void liveAnalysisWhileRemovingDeadInstructionsFromFunctionCFG(ArrayList<Node> nodes, TextSection section) {
        boolean instructionsRemoved = true;
        ArrayList<Instruction> instructionsToRemove = new ArrayList<>();

        // if we detect a removal, we need to recompute as more could be removed
        while (instructionsRemoved) {
            instructionsRemoved = false;
            ArrayList<Node> reverseOrderTraversal = reverseOrderTraversalFunctionCFG(nodes);
            performLivenessAnalysisOnFunctionCFG(reverseOrderTraversal);
            ArrayList<Node> nodesToRemove = new ArrayList<>();
            nodes.forEach(node -> {
                if (node.def().isPresent() && !node.liveOut.contains(node.def().get())) {
                    nodesToRemove.add(node);
                }
            });
            if (!nodesToRemove.isEmpty()) {
                instructionsRemoved = true;
                nodesToRemove.forEach(node -> {
                    // remove all references and edges to the node
                    instructionsToRemove.add(node.instr);
                    List<Node> preds = node.pred;
                    Optional<Node> succ = Optional.ofNullable(node.succ.size() == 0 ? null : node.succ.get(0));
                    preds.forEach(pred -> {
                        pred.succ.remove(node);
                        succ.ifPresent(s -> pred.succ.add(s));
                    });
                    succ.ifPresent(s -> {
                        s.pred.remove(node);
                        s.pred.addAll(preds);
                    });

                    nodes.remove(node);
                });
            }
        }
        section.items.removeAll(instructionsToRemove);
    }

    /**
     * Reset the visited flag of all nodes in the CFG of each function in the program.
     */
    private static void resetVisitedCFG(ArrayList<Node> nodes) {
        nodes.forEach(node -> node.visited = false);
    }

    /**
     * Get the reverse order traversal of the CFG of each function in the program.
     */
    private static ArrayList<Node> reverseOrderTraversalFunctionCFG(ArrayList<Node> nodes) {
        Node lastNode = nodes.getLast();
        ArrayList<Node> reverseOrder = new ArrayList<>();
        Queue<CFGraph.Node> workList = new LinkedList<>();
        workList.add(lastNode);

        // reset visited flag of all nodes
        resetVisitedCFG(nodes);

        // get reverse order traversal of the CFG
        while (!workList.isEmpty()) {
            CFGraph.Node node = workList.poll();
            reverseOrder.add(node);
            workList.addAll(node.pred.stream().filter(n -> !n.visited).toList());
            node.visited = true;
        }
        return reverseOrder;
    }

    /**
     * Perform liveness analysis on the control flow graph of each function in the program.
     * Uses the fixed point algorithm.
     */
    private static void performLivenessAnalysisOnFunctionCFG(ArrayList<Node> reverseOrderTraversal) {
        boolean detectedUpdate = true;
        Set<Register.Virtual> newLiveOut = new HashSet<>();
        Set<Register.Virtual> newLiveIn = new HashSet<>();
        while (detectedUpdate) {
            detectedUpdate = false;
            for (CFGraph.Node node : reverseOrderTraversal) {
                // clear newLiveOut and newLiveIn
                newLiveOut.clear();
                newLiveIn.clear();

                // update liveOut
                node.succ.stream().map(n -> n.liveIn).forEach(newLiveOut::addAll);
                int oldSize = node.liveOut.size();
                int newSize = newLiveOut.size();
                if (oldSize != newSize) {
                    detectedUpdate = true;
                    node.liveOut.clear();
                    node.liveOut.addAll(newLiveOut);
                }

                // update liveIn
                newLiveIn.addAll(newLiveOut);
                node.def().ifPresent(newLiveIn::remove);
                newLiveIn.addAll(node.use());
                oldSize = node.liveIn.size();
                newSize = newLiveIn.size();
                if (oldSize != newSize) {
                    detectedUpdate = true;
                    node.liveIn.clear();
                    node.liveIn.addAll(newLiveIn);
                }
            }
        }
    }

    /**
     * Generate the control flow graph for each function in the program.
     * Dead instructions are not removed from the program.
     */
    private ArrayList<ArrayList<Node>> generateProgramCFGsDoNotTouchDeadCode() {
        ArrayList<ArrayList<Node>> cfgs = new ArrayList<>();
        for (TextSection section : asmProgram.textSections) {
            cfgs.add(generateFunctionCFG(section));
            labelToNode.clear(); // clear labelToNode for the next section
        }
        return cfgs;
    }

    /**
     * Generate the control flow graph for a function.
     */
    private ArrayList<Node> generateFunctionCFG(TextSection section) {
        ArrayList<Node> nodes = generateFunctionCFGIgnoreControlFlowInstructions(section);

        // add edges for control flow instructions
        for (Node fromNode: nodes) {
            if (fromNode.instr instanceof Instruction.ControlFlow cf) {
                Label toLabel =
                    switch (cf) {
                        case UnaryBranch ub -> ub.label;
                        case BinaryBranch bb -> bb.label;
                        case Jump j -> j.opcode == OpCode.JAL ? null : j.label;
                        case JumpRegister jr -> null;
                        default -> throw new AssertionError();
                    };
                if (toLabel == null) { // early skip for JR or JAL(does not require an edge)
                    continue;
                }
                Node toNode = labelToNode.get(toLabel);
                toNode.pred.add(fromNode);
                fromNode.succ.add(toNode);
            }
        }

        return nodes;
    }

    /**
     * For a given text section, generate the control flow graph nodes without non-trivial edges
     * that arise from Jump and Branch Instructions.
     */
    private ArrayList<Node> generateFunctionCFGIgnoreControlFlowInstructions(TextSection section) {
        ArrayList<Node> nodes = new ArrayList<>();
        Node lastInstruction = null;
        Label lastLabel = null;
        for (AssemblyItem item : section.items) {
            switch (item) {
                // remember the latest label
                case AssemblyTextItem ati -> {
                    switch (ati) {
                        case Label label -> { lastLabel = label; } // memorize last label
                        default -> { continue; }
                    }
                }
                // create a node for each instruction
                case Instruction inst -> {
                    Node node = new Node(inst, lastLabel);
                    if (lastLabel != null) {
                        labelToNode.put(lastLabel, node);
                    }
                    // link current instruction to the previous one
                    if (lastInstruction != null) {
                        lastInstruction.succ.add(node);
                        node.pred.add(lastInstruction);
                    }
                    lastInstruction = node;
                    lastLabel = null;
                    nodes.add(node);
                }
                default -> throw new AssertionError();
            }
        }
        return nodes;
    }

}
