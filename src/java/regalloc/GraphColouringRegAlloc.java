package regalloc;

import java.util.ArrayList;
import java.util.List;

import gen.asm.AssemblyPass;
import gen.asm.AssemblyProgram;

public class GraphColouringRegAlloc implements AssemblyPass {

    public static final GraphColouringRegAlloc INSTANCE = new GraphColouringRegAlloc();


    @Override
    public AssemblyProgram apply(AssemblyProgram asmProgWithVirtualRegs) {

        AssemblyProgram newProg = new AssemblyProgram();

        // generate the Control Flow Graph of the program (each function will have its own entry node (dummy node))
        ArrayList<CFGraph.Node> entryNodes = (new CFGraph(asmProgWithVirtualRegs)).generateGraph();

        // analyse the liveness of the main function
        entryNodes.forEach(e -> (new LivenessAnalysis()).analyseLiveness(e));

        // build the interference graph
        List<InterferenceGraph> iGraphs = entryNodes.stream().map(e -> {
            InterferenceGraph iGraph = new InterferenceGraph();
            iGraph.buildInterferenceGraph(e);
            return iGraph;
        }).toList();

        InterferenceGraph finalIG = InterferenceGraph.mergeDisjointGraphs(iGraphs);


        return newProg;
    }



}
