package regalloc;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import regalloc.CFGraph.Node;


public class DotPrinterCFG {
    private final PrintWriter writer;
    private static final String DOT_HEADER = "digraph cfg {\n";
    private static final String DOT_FOOTER = "}\n";
    private final StringBuilder nodes = new StringBuilder();
    private final StringBuilder eldges = new StringBuilder();


    public DotPrinterCFG(PrintWriter writer) {
        this.writer = writer;
    }
    public void visit(ArrayList<ArrayList<Node>> cfgs) {
        visitHelper(cfgs);
        writer.print(DOT_HEADER);
        writer.print(nodes.toString());
        writer.print(eldges.toString());
        writer.print(DOT_FOOTER);
        writer.flush();
    }

    private void visitHelper(ArrayList<ArrayList<Node>> cfgs) {
        int count = 0;
        for (var cfg : cfgs) {
            Map<Node, Integer> nodes = new HashMap<>();
            for (Node node : cfg) {
                addNewNode(nodeToString(node), count++);
                nodes.put(node, count - 1);
            }
            for (Node node : cfg) {
                for (Node succ : node.succ) {
                    linkNodes(nodes.get(node), nodes.get(succ));
                }
            }
        }
    }


    private void linkNodes(int parent, int child) {
        eldges.append("Node" + parent + " -> " + "Node" + child + ";\n");
    }
    private void addNewNode(String name, int id) {
        nodes.append("Node" + id + " [label=\"" + name + "\"];\n");
    }
    private String nodeToString(Node node) {
        return (new StringBuilder())
                    .append("LiveIn: ").append(node.liveIn).append("\n")
                    .append(node.label == null ? node.instr.toString() : node.label.toString() + " : " + node.instr.toString()).append("\n")
                    .append("LiveOut: ").append(node.liveOut)
                    .toString()
        ;
    }
}
