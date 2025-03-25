package regalloc;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Set;

import gen.asm.Register;

public class LivenessAnalysis {

    public LivenessAnalysis() {
    }

    // analyse only one connected component
    public void analyseLiveness(CFGraph.Node entryNode) {
        CFGraph.Node lastNode = entryNode.succ.get(0); // skip first dummy node
        while (lastNode != null) {
            if (lastNode.succ.isEmpty()) {
                break;
            }
            lastNode = lastNode.succ.get(0);
        }

        if (lastNode == null) {
            return; // empty graph no need to analyse
        }

        // fixed point algorithm
        ArrayList<CFGraph.Node> reverseOrder = new ArrayList<>();
        Queue<CFGraph.Node> workList = new LinkedList<>();
        workList.add(lastNode);

        // reverse order traversal
        while (!workList.isEmpty()) {
            CFGraph.Node node = workList.poll();
            reverseOrder.add(node);
            workList.addAll(node.pred.stream().filter(n -> !n.visited && n.instr != null).toList());
            node.visited = true;
        }


        boolean detectedUpdate = true;
        while (detectedUpdate) {
            detectedUpdate = false;
            for (CFGraph.Node node : reverseOrder) {
                // update liveOut
                Set<Register.Virtual> newLiveOut = new HashSet<>();
                node.succ.stream().map(n -> n.liveIn).forEach(newLiveOut::addAll);
                int oldSize = node.liveOut.size();
                int newSize = newLiveOut.size();
                if (oldSize != newSize) {
                    detectedUpdate = true;
                    node.liveOut.clear();
                    node.liveOut.addAll(newLiveOut);
                }

                // update liveIn
                Set<Register.Virtual> newLiveIn = newLiveOut;
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
}
