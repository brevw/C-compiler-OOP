package regalloc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;

import gen.asm.AssemblyItem;
import gen.asm.AssemblyProgram;
import gen.asm.AssemblyTextItem;
import gen.asm.Comment;
import gen.asm.Directive;
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
            return instr.uses().stream().filter(u -> u.isVirtual()).map(Register.Virtual.class::cast).toList();
        }

        public Optional<Register.Virtual> def() {
            Register reg = instr.def();
            return reg != null && reg.isVirtual() ? Optional.of((Register.Virtual) reg) : Optional.empty();
        }

        public static void resetVisited(Node entryNode) {
            getAllNodes(entryNode).forEach(node -> node.visited = false);
        }

        public static ArrayList<Node> getAllNodes(Node entryNode) {
            ArrayList<Node> nodes = new ArrayList<>();
            Node node = entryNode.succ.get(0);
            while (node != null) {
                if (node.succ.isEmpty()) {
                    break;
                }
                nodes.add(node);
                node = node.succ.get(0);
            }
            return nodes;
        }
    }


    private final AssemblyProgram asmProgram;
    private final Map<Label, Node> labelToNode = new HashMap<>();

    public CFGraph(AssemblyProgram asmProgram) {
        this.asmProgram = asmProgram;
    }

    // can only be called after liveness analysis
    public ArrayList<Node> GenerateGraphAndLivenessAnalysisWhileDeletingUselessInstructions() {
        return GenerateGraphAndLivenessAnalysisWhileDeletingUselessInstructions(Integer.MAX_VALUE);
    }
    public ArrayList<Node> GenerateGraphAndLivenessAnalysisWhileDeletingUselessInstructions(int maxIterations) {
        boolean detectChanges = true;
        ArrayList<Node> entryNodes = null;

        int iter = 0;
        while (detectChanges && iter++ < maxIterations) {
            detectChanges = false;
            // generate graph
            labelToNode.clear();
            entryNodes = generateGraph();

            // analyse liveness
            entryNodes.forEach(e -> (new LivenessAnalysis()).analyseLiveness(e));

            // detect and remove useless instructions
            ArrayList<Instruction> instructionsToRemove = new ArrayList<>();
            entryNodes.forEach(entryNode -> {
                ArrayList<Node> allNodes = Node.getAllNodes(entryNode);
                allNodes.forEach(node -> {
                    if (node.instr != null && node.def().isPresent() && !node.liveOut.contains(node.def().get())) {
                        instructionsToRemove.add(node.instr);
                    }
                });
            });

            // if some instructions were removed, we need to regenerate the graph
            detectChanges = !instructionsToRemove.isEmpty();
            asmProgram.textSections.forEach(section -> {
                section.items.removeAll(instructionsToRemove);
            });
        }
        return entryNodes;
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
        for (Node node: Node.getAllNodes(entryNode)) {
            if (node.instr instanceof Instruction.ControlFlow cf) {
                Label targetLabel =
                    switch (cf) {
                        case UnaryBranch ub -> ub.label;
                        case BinaryBranch bb -> bb.label;
                        case Jump j -> j.opcode == OpCode.JAL ? null : j.label;
                        case JumpRegister jr -> null;
                        default -> throw new AssertionError();
                    };
                if (targetLabel == null) { // early skip for JR or JAL(does not require an edge)
                    continue;
                }
                Node targetNode = labelToNode.get(targetLabel);
                if (!node.succ.contains(targetNode)) {
                    targetNode.pred.add(node);
                    node.succ.add(targetNode);
                }
            }
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
