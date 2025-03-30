package regalloc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import gen.asm.Register;

public class InterferenceGraph {

    /**
     * A node in the interference graph
     */
    public static class Node {
        final Register.Virtual reg;
        int degree = 0;
        final List<Node> adj = new ArrayList<>();
        int uses = 0;
        int defs = 0;

        public boolean canSpill = true; // to be used by the graph coloring algorithm
        public boolean active = true; // to be used by the graph coloring algorithm
        public Register.Arch archReg = null; // to be used by the graph coloring algorithm
                                             // by default null (later null will mean that the node is spilled)

        public Node(Register.Virtual reg) {
            this.reg = reg;
        }


        /**
         * Get all adjacent nodes
         * @return a list of all adjacent nodes
         */
        public List<Node> getAllAdj() {
            return new ArrayList<>(adj);
        }

        /**
         * Get active adjacent nodes
         * @return a list of all active adjacent nodes
         */
        public List<Node> getActiveAdj() {
            return getAllAdj().stream().filter(n -> n.active).toList();
        }
    }

    /**
     * A mapping from virtual registers to nodes in the interference graph
     */
    public final Map<Register.Virtual, Node> nodesMapping = new HashMap<>();
    public final ArrayList<CFGraph.Node> nodes;
    public InterferenceGraph(ArrayList<CFGraph.Node> nodes) {
        this.nodes = nodes;
    }

    /**
     * Get all nodes in the interference graph
     * @return a list of all nodes in the interference graph
     */
    public List<Node> getNodes() {
        return nodesMapping.values().stream().toList();
    }

    /**
     * Map virtual register to the node in the interference graph
     * @param vr the virtual register
     * @return the node corresponding to the virtual register
     */
    public Node vrToNode(Register.Virtual vr) {
        return nodesMapping.get(vr);
    }

    /**
     * Build the interference graph from the control flow graphs of the program
     */
    public static List<InterferenceGraph> buildInterferenceGraphFromCFGs(ArrayList<ArrayList<CFGraph.Node>> cfgs) {
        return cfgs.stream().map(cfgNodes -> {
        InterferenceGraph ig = new InterferenceGraph(cfgNodes);
        ig.buildInterferenceGraphFromFunctionCFG();
        return ig;
        }).toList();
    }

    /**
     * Build the interference graph from the control flow graph of a function
     */
    public void buildInterferenceGraphFromFunctionCFG() {
        // get the unique virtual registers used by the compiled program
        Set<Register.Virtual> virtualRegs = new HashSet<>();
        nodes.forEach(n -> {
            n.use().forEach(virtualRegs::add);
            n.def().ifPresent(virtualRegs::add);
        });

        // create a node for each virtual register
        virtualRegs.forEach(vr -> nodesMapping.put(vr, new Node(vr)));

        // fill in the adjacencies and nbr of uses of the registers
        nodes.forEach(n -> {
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

    /**
     * Get all active nodes
     * @return a list of all active nodes
     */
    public List<Node> allActiveNodes() {
        return getNodes().stream().filter(n -> n.active).toList();
    }

    /**
     * deactivate a node
     * @param n the node to deactivate
     */
    public void deactivateNode(Node n) {
        assert nodesMapping.containsKey(n.reg);
        assert n.active;
        n.active = false;
        n.getAllAdj().forEach(node -> {
            --node.degree;
        });
    }

    /**
     * activate a node
     * @param n the node to activate
     */
    public void activateNode(Node n) {
        assert nodesMapping.containsKey(n.reg);
        assert !n.active;
        n.active = true;
        n.getAllAdj().forEach(node -> {
            ++node.degree;
        });
    }

}
