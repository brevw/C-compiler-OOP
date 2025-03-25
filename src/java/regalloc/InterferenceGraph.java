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
        int degree = 0;
        private final List<Node> adj = new ArrayList<>();
        int uses = 0;
        int defs = 0;

        public boolean active = true; // to be used by the graph coloring algorithm
        public Register.Arch archReg = null; // to be used by the graph coloring algorithm
                                             // by default null (later null will mean that the node is spilled)

        public Node(Register.Virtual reg) {
            this.reg = reg;
        }


        public List<Node> getAllAdj() {
            return new ArrayList<>(adj);
        }

        public List<Node> getActiveAdj() {
            return getAllAdj().stream().filter(n -> n.active).toList();
        }
    }

    private final Map<Register.Virtual, Node> nodesMapping = new HashMap<>();
    public InterferenceGraph() {
    }

    // get activated and deactivated nodes
    public List<Node> getNodes() {
        return nodesMapping.values().stream().toList();
    }

    // map a virtual register to its corresponding architecture register
    public Register.Arch getArchReg(Register.Virtual vr) {
        return nodesMapping.get(vr).archReg;
    }

    // build the interference graph
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

        // fill in the adjacencies and nbr of uses of the registers
        allNodes.forEach(n -> {
            Set<Register.Virtual> live = n.liveOut;

            // update the number of uses of each register
            n.use().forEach(r -> {
                Node node = nodesMapping.get(r);
                ++node.uses;
            });

            // update the number of defs of each register
            n.def().ifPresent(r -> {
                Node node = nodesMapping.get(r);
                ++node.defs;
            });


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

    // merge disjoint graphs
    public static InterferenceGraph mergeDisjointGraphs(List<InterferenceGraph> graphs) {
        InterferenceGraph mergedGraph = new InterferenceGraph();

        // assume that all graphs have disjoint sets of nodes
        graphs.forEach(g -> {
            g.getNodes().forEach(n -> {
                mergedGraph.nodesMapping.put(n.reg, n);
            });

        });
        return mergedGraph;
    }

    public List<Node> allActiveNodes() {
        return getNodes().stream().filter(n -> n.active).toList();
    }

    public void deactivateNode(Node n) {
        assert nodesMapping.containsKey(n.reg);
        assert n.active;
        n.active = false;
        n.getAllAdj().forEach(node -> {
            --node.degree;
        });
    }

    public void activateNode(Node n) {
        assert nodesMapping.containsKey(n.reg);
        assert !n.active;
        n.active = true;
        n.getAllAdj().forEach(node -> {
            ++node.degree;
        });
    }

}
