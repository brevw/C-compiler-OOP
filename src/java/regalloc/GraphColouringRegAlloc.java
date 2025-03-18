package regalloc;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import gen.asm.AssemblyPass;
import gen.asm.AssemblyProgram;
import gen.asm.Register;

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

        // color the graph (we will only use $s0-$s9 and $t0-$t7)
        Set<Register.Arch> availableColors = Set.of(Register.Arch.t0, Register.Arch.t1, Register.Arch.t2, Register.Arch.t3, Register.Arch.t4, Register.Arch.t5, Register.Arch.t6, Register.Arch.t7, Register.Arch.t8, Register.Arch.t9
                                                    , Register.Arch.s0, Register.Arch.s1, Register.Arch.s2, Register.Arch.s3, Register.Arch.s4, Register.Arch.s5, Register.Arch.s6, Register.Arch.s7);
        (new GraphColor(availableColors)).colorGraph(finalIG);


        return newProg;
    }



}
