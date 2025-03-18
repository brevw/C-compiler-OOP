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

    public void visit(Node entryPoint) {
        visitHelper(entryPoint);
        writer.print(DOT_HEADER);
        writer.print(nodes.toString());
        writer.print(eldges.toString());
        writer.print(DOT_FOOTER);
        writer.flush();
    }

    private void visitHelper(Node entryPoint) {
        Map<Node, Integer> nodes = new HashMap<>();
        Node node = entryPoint.succ.size() == 0 ? null : entryPoint.succ.get(0);
        int i = 0;
        while (node != null) {
            addNewNode(nodeToString(node), i);
            nodes.put(node, i);
            node = node.succ.size() == 0 ? null : node.succ.get(0);
            ++i;
        }
        for (Node n : nodes.keySet()) {
            for (Node succ : n.succ) {
                linkNodes(nodes.get(n), nodes.get(succ));
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
        return node.label == null ? node.instr.toString() : node.label.toString() + " : " + node.instr.toString();
    }
}
