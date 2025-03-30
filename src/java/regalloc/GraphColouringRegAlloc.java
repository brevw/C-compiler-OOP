package regalloc;

import java.util.ArrayList;
import java.util.List;

import gen.asm.AssemblyPass;
import gen.asm.AssemblyProgram;
import gen.asm.Register;
import util.CollapseLabels;

public class GraphColouringRegAlloc implements AssemblyPass {

    public static final GraphColouringRegAlloc INSTANCE = new GraphColouringRegAlloc();

    public static class PairBoolProg {
        public final boolean virtual;
        public final AssemblyProgram prog;

        public PairBoolProg(boolean virtual, AssemblyProgram prog) {
            this.virtual = virtual;
            this.prog = prog;
        }
    }


    @Override
    public AssemblyProgram apply(AssemblyProgram asmProgWithVirtualRegs) {
        AssemblyProgram newProg = new CollapseLabels().visit(asmProgWithVirtualRegs); // fix edge case where multiple instructions point to the same instruction
        ArrayList<ArrayList<CFGraph.Node>> cfgs = new CFGraph(newProg).generateProgramCFGs();
        List<InterferenceGraph> iGraphs = InterferenceGraph.buildInterferenceGraphFromCFGs(cfgs);
        List<Register.Arch> availableColors = List.of(Register.Arch.t0, Register.Arch.t1, Register.Arch.t2, Register.Arch.t3, Register.Arch.t4, Register.Arch.t5, Register.Arch.t6, Register.Arch.t7, Register.Arch.t8, Register.Arch.t9
                                                    , Register.Arch.s0, Register.Arch.s1, Register.Arch.s2, Register.Arch.s3, Register.Arch.s4, Register.Arch.s5, Register.Arch.s6, Register.Arch.s7);
        //List<Register.Arch> availableColors = List.of(Register.Arch.t0, Register.Arch.t1, Register.Arch.t2, Register.Arch.t3, Register.Arch.t4);
        GraphColor gc = new GraphColor(availableColors, newProg, iGraphs);
        gc.transformToPhysicalASMProgram();
        return newProg;
    }


}
