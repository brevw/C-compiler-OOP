package regalloc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import gen.asm.AssemblyItem;
import gen.asm.AssemblyProgram;
import gen.asm.AssemblyTextItem;
import gen.asm.Comment;
import gen.asm.Directive;
import gen.asm.Instruction;
import gen.asm.Label;
import gen.asm.Register;
import gen.asm.AssemblyProgram.TextSection;
import gen.asm.Instruction.BinaryBranch;
import gen.asm.Instruction.Jump;
import gen.asm.Instruction.JumpRegister;
import gen.asm.Instruction.UnaryBranch;

public class CFGraph {

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

        public List<Register.Virtual> use() {
            return instr.uses().stream().filter(Register.Virtual.class::isInstance).map(Register.Virtual.class::cast).toList();
        }

        public Register.Virtual def() {
            Register reg = instr.def();
            return reg instanceof Register.Virtual ? (Register.Virtual) reg : null;
        }
    }


    private final AssemblyProgram asmProgram;
    private final Map<Label, Node> labelToNode = new HashMap<>();

    public CFGraph(AssemblyProgram asmProgram) {
        this.asmProgram = asmProgram;
    }

    public ArrayList<Node> generateGraph() {
        ArrayList<Node> entryNodes = new ArrayList<>();
        for (TextSection section : asmProgram.textSections) {
            Node entryNode = generateSubGraph(section);
            entryNodes.add(entryNode);
            labelToNode.clear(); // clear labelToNode for the next section
        }
        return entryNodes;
    }

    private Node generateSubGraph(TextSection section) {
        Node entryNode = generateSubGraphNodesIgnoreControlFlowInstructions(section);

        // add edges for control flow instructions
        Node node = entryNode.succ.size() == 0 ? null : entryNode.succ.get(0);
        while (node != null) {
            if (node.instr instanceof Instruction.ControlFlow cf) {
                Label targetLabel =
                    switch (cf) {
                        case UnaryBranch ub -> ub.label;
                        case BinaryBranch bb -> bb.label;
                        case Jump j -> j.label;
                        case JumpRegister jr -> null;
                        default -> throw new AssertionError();
                    };
                if (targetLabel == null) { // early skip for JumpRegister (does not require an edge)
                    node = node.succ.size() == 0 ? null : node.succ.get(0);
                    continue;
                }
                Node targetNode = labelToNode.get(targetLabel);
                if (targetNode != null && !node.succ.contains(targetNode)) {
                    targetNode.pred.add(node);
                    node.succ.add(targetNode);
                }
            }

            // go to next instruction
            node = node.succ.size() == 0 ? null : node.succ.get(0);
        }

        return entryNode;
    }

    private Node generateSubGraphNodesIgnoreControlFlowInstructions(TextSection section) {
        Node entryNode = new Node(null, null);
        Node latestInstruction = entryNode;
        Label latestLabel = null;
        for (AssemblyItem item : section.items) {
            switch (item) {
                // remember the latest label
                case AssemblyTextItem ati -> {
                    switch (ati) {
                        case Comment comment -> { continue; }
                        case Label label -> { latestLabel = label; }
                        case Directive directive -> { continue; }
                        default -> throw new AssertionError();
                    }
                }
                // create a node for each instruction
                case Instruction inst -> {
                    Node node = new Node(inst, latestLabel);
                    if (latestLabel != null) {
                        labelToNode.put(latestLabel, node);
                        latestLabel = null;
                    }
                    if (latestInstruction != null) {
                        latestInstruction.succ.add(node);
                        node.pred.add(latestInstruction);
                    }
                    latestInstruction = node;
                }
                default -> throw new AssertionError();
            }
        }
        return entryNode;
    }

}
