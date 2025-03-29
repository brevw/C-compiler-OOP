package regalloc;

import java.io.PrintWriter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;


public class DotPrinterIG {
    private final PrintWriter writer;
    private static final String DOT_HEADER = "graph IG {\n";
    private static final String DOT_FOOTER = "}\n";
    private final StringBuilder nodes = new StringBuilder();
    private final Set<String> eldges = new HashSet<>();


    public DotPrinterIG(PrintWriter writer) {
        this.writer = writer;
    }

    /*
    public void visit(InterferenceGraph iGraph) {
        visitHelper(iGraph);
        writer.print(DOT_HEADER);
        writer.print(nodes.toString());
        writer.print(eldges.stream().reduce("", (a, b) -> a + b));
        writer.print(DOT_FOOTER);
        writer.flush();
    }

    private void visitHelper(InterferenceGraph iGraph) {
        List<InterferenceGraph.Node> allNodes = iGraph.getNodes();
        AtomicInteger i = new AtomicInteger(0);

        // create a nodes
        allNodes.forEach(n -> addNewNode(nodeToString(n), i.getAndIncrement()));

        // create edges
        allNodes.forEach(n ->
            n.getAllAdj().forEach(a ->
                linkNodes(allNodes.indexOf(n), allNodes.indexOf(a))
            )
        );
    }


    private void linkNodes(int parent, int child) {
        // make sure parent is always less than child
        if (parent > child) {
            parent = parent ^ child;
            child = parent ^ child;
            parent = parent ^ child;
        }
        eldges.add("Node" + parent + " -- " + "Node" + child + ";\n");
    }
    private void addNewNode(String name, int id) {
        nodes.append("Node" + id + " [label=\"" + name + "\"];\n");
    }
    private String nodeToString(InterferenceGraph.Node node) {
        return node.reg.toString() + " : " + (node.archReg == null ? "spilled" : node.archReg.toString());
    }
    */
}

