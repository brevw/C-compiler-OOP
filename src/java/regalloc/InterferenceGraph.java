package regalloc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import gen.asm.Register;

public class InterferenceGraph {

    public static class Node {
        final Register.Virtual reg;
        public int degree = 0;
        public boolean precolored = false; // to be used by the graph coloring algorithm
        final Set<Node> adj = new HashSet<>();

        public Node(Register.Virtual reg) {
            this.reg = reg;
        }
    }

    private final Map<Register.Virtual, Node> nodesMapping = new HashMap<>();
    public InterferenceGraph() {
    }

    public List<Node> getNodes() {
        return nodesMapping.values().stream().toList();
    }

    public void buildInterferenceGraph(CFGraph.Node entryNode) {
        ArrayList<CFGraph.Node> allNodes = CFGraph.Node.getAllNodes(entryNode);

        // generate the unique virtual registers used by the compiled program
        Set<Register.Virtual> virtualRegs = new HashSet<>();
        allNodes.forEach(n -> {
            n.use().forEach(virtualRegs::add);
            n.def().ifPresent(virtualRegs::add);
        });

        // create a node for each virtual register
        virtualRegs.forEach(vr -> nodesMapping.put(vr, new Node(vr)));

        // fill in the adjacencies
        allNodes.forEach(n -> {
            Set<Register.Virtual> live = n.liveOut;

            // add an edge between all pairs of live variables
            live.forEach(vr1 -> {
                Node node1 = nodesMapping.get(vr1);
                live.forEach(vr2 -> {
                    Node node2 = nodesMapping.get(vr2);
                    if (!vr1.equals(vr2) && !node1.adj.contains(node2)) {
                        node1.adj.add(node2);
                        node2.adj.add(node1);
                        ++node1.degree;
                        ++node2.degree;
                    }
                });
            });
        });

    }

}
