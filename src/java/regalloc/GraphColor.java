package regalloc;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.Stack;

import gen.asm.Register;

public class GraphColor {
    public final ArrayList<Register.Arch> availableRegs;

    // allocate two registers to handle spilling
    public final Register.Arch spillReg1, spillReg2;

    public GraphColor(List<Register.Arch> availableRegs) {
        assert availableRegs.size() >= 2;

        int size = availableRegs.size();
        this.availableRegs = new ArrayList<>(availableRegs.subList(0, size - 2));
        this.spillReg1 = availableRegs.get(size - 2);
        this.spillReg2 = availableRegs.get(size - 1);
    }

    // implementation of the Chaitin algorithm
    public void colorGraph(InterferenceGraph iGraph) {
        Stack<InterferenceGraph.Node> stack = new Stack<>();

        // keep deactivating nodes with degree less than the number of available colors (registers)
        int graphSize = iGraph.getNodes().size();
        int processedNodes = 0;
        for (; processedNodes < graphSize; ++processedNodes) {
            List<InterferenceGraph.Node> cantidates = iGraph.allActiveNodes().stream().filter(n -> n.degree < availableRegs.size()).toList();
            if (cantidates.size() == 0) {
                // spill the node with the highest degree
                InterferenceGraph.Node spillNode = iGraph.allActiveNodes().stream().max((n1, n2) -> Integer.compare(n1.degree, n2.degree)).get();
                iGraph.deactivateNode(spillNode);
                spillNode.archReg = null; // mark the node as spilled
            } else {
                // deactivate the node with the highest degree and add to the stack
                InterferenceGraph.Node bestCandidate = cantidates.stream().max(
                (n1, n2) -> Integer.compare(n1.degree, n2.degree)
                ).get();
                iGraph.deactivateNode(bestCandidate);
                stack.push(bestCandidate);
            }
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
