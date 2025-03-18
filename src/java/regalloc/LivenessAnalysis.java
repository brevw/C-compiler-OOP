package regalloc;

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
        Queue<CFGraph.Node> workList = new LinkedList<>();
        workList.add(lastNode);
        boolean detectedUpdate = true;
        while (detectedUpdate) {
            detectedUpdate = false;
            // mask all nodes as not visited
            entryNode.succ.forEach(n -> n.visited = false);
            while (!workList.isEmpty()) {
                CFGraph.Node node = workList.poll();

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
                newLiveIn.remove(node.def());
                newLiveIn.addAll(node.use());
                oldSize = node.liveIn.size();
                newSize = newLiveIn.size();
                if (oldSize != newSize) {
                    detectedUpdate = true;
                    node.liveIn.clear();
                    node.liveIn.addAll(newLiveIn);
                }

                // update workList and mark node as visited
                node.visited = true;
                workList.addAll(node.pred.stream().filter(n -> !n.visited && n.instr != null).toList());

            }
        }
    }
}
