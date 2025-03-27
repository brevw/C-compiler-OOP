package regalloc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.stream.Collectors;

import gen.asm.AssemblyPass;
import gen.asm.AssemblyProgram;
import gen.asm.AssemblyTextItem;
import gen.asm.Directive;
import gen.asm.Instruction;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import util.CollapseLabels;
import util.Utils;

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
        boolean isVirtualProg = true;
        HashSet<Label> usedLabels = new HashSet<>();

        while (isVirtualProg) {
            PairBoolProg p = applyOnce(newProg, usedLabels);
            isVirtualProg = p.virtual;
            newProg = p.prog;
        }
        return newProg;
    }

    // apply the graph coloring register allocation algorithm once
    // if there is spilling, create a new program with virtual registers and return false
    // otherwise, create a new program with architectural registers and return true
    private PairBoolProg applyOnce(AssemblyProgram asmProgWithVirtualRegs, Set<Label> usedLabels) {
        AssemblyProgram newProg = new AssemblyProgram();
        boolean isVirtual = false;

        // generate the Control Flow Graph of the program (each function will have its own entry node (dummy node))
        ArrayList<CFGraph.Node> entryNodes = (new CFGraph(asmProgWithVirtualRegs)).GenerateGraphAndLivenessAnalysisWhileDeletingUselessInstructions();

        // build the interference graph
        List<InterferenceGraph> iGraphs = entryNodes.stream().map(e -> {
            InterferenceGraph iGraph = new InterferenceGraph();
            iGraph.buildInterferenceGraph(e);
            return iGraph;
        }).toList();
        InterferenceGraph finalIG = InterferenceGraph.mergeDisjointGraphs(iGraphs);

        // color the graph (we will only use $s0-$s9 and $t0-$t7)
        List<Register.Arch> availableColors = List.of(Register.Arch.t0, Register.Arch.t1, Register.Arch.t2, Register.Arch.t3, Register.Arch.t4, Register.Arch.t5, Register.Arch.t6, Register.Arch.t7, Register.Arch.t8, Register.Arch.t9
                                                    , Register.Arch.s0, Register.Arch.s1, Register.Arch.s2, Register.Arch.s3, Register.Arch.s4, Register.Arch.s5, Register.Arch.s6, Register.Arch.s7);
        GraphColor graphColor = new GraphColor(availableColors);
        Register.Virtual spilled =  graphColor.colorGraph(finalIG);

        if (spilled != null) {
            // rewrite the program with the spilled virtual register
            isVirtual = true;
            Label newLabel = applySpilling(asmProgWithVirtualRegs, newProg, finalIG, graphColor, spilled);
            usedLabels.add(newLabel);
        } else {
            applyColoring(asmProgWithVirtualRegs, newProg, finalIG, graphColor, usedLabels);
        }
        return new PairBoolProg(isVirtual, newProg);

    }


    private static Label applySpilling(AssemblyProgram asmProgWithVirtualRegs, AssemblyProgram newProg, InterferenceGraph finalIG, GraphColor graphColor, Register.Virtual spilledReg) {
        // copy the data section
        asmProgWithVirtualRegs.dataSection.items.forEach( item -> {
            newProg.dataSection.emit(item);
        });

        // allocate a label for the spilled virtual register in a new data section
        Label spilledLabel = Label.create(spilledReg.toString());
        newProg.dataSection.emit(spilledLabel);
        newProg.dataSection.emit(new Directive(Utils.SPACE_DIRECTIVE + Utils.WORD_SIZE));

        // rebuild instructions in the text section
        asmProgWithVirtualRegs.textSections.forEach( section -> {
            final AssemblyProgram.TextSection newSection = newProg.emitNewTextSection();
            section.items.forEach(item -> {
                switch (item) {
                    case AssemblyTextItem it -> newSection.emit(it);
                    case Instruction insn -> {
                        Map<Register, Register> regMap = new HashMap<>();

                        // handle the uses
                        Register.Virtual newVirtualReg = null;
                        if (insn.uses().contains(spilledReg)) {
                            newVirtualReg = Register.Virtual.create();
                            newSection.emit(OpCode.LA, newVirtualReg, spilledLabel);
                            newSection.emit(OpCode.LW, newVirtualReg, newVirtualReg, 0);
                            regMap.put(spilledReg, newVirtualReg);
                        }
                        Register oldDef = insn.def();

                        // handle the def
                        Register.Virtual newVirtualReg2 = null;
                        boolean defIsSpilled = oldDef == spilledReg;
                        if (defIsSpilled) {
                            newVirtualReg2 = Register.Virtual.create();
                            regMap.put(spilledReg, newVirtualReg2);
                        }
                        newSection.emit(insn.rebuild(regMap));
                        if (defIsSpilled) {
                            Register.Virtual newVirtualReg3 = Register.Virtual.create();
                            newSection.emit(OpCode.LA, newVirtualReg3, spilledLabel);
                            newSection.emit(OpCode.SW, newVirtualReg2, newVirtualReg3, 0);
                        }
                    }
                    default -> throw new RuntimeException("Unexpected item type: " + item.getClass());
                }
            });
        });

        return spilledLabel;
    }


    private static void applyColoring(AssemblyProgram asmProgWithVirtualRegs, AssemblyProgram newProg, InterferenceGraph finalIG, GraphColor graphColor, Set<Label> labels) {
        // create new program with architecture registers
        assert finalIG.getNodes().stream().allMatch(n -> n.archReg != null);
        Map<Register, Register> vrArchMap = finalIG.getNodes().stream().collect(Collectors.toMap(n -> n.reg, n -> n.archReg));
        // copy the data section
        asmProgWithVirtualRegs.dataSection.items.forEach( item -> {
            newProg.dataSection.emit(item);
        });
        // rebuild instructions in the text section
        asmProgWithVirtualRegs.textSections.forEach( section -> {
            final AssemblyProgram.TextSection newSection = newProg.emitNewTextSection();
            Set<Register.Arch> usedArchRegs = new HashSet<>();
            Set<Label> usedLabels = new HashSet<>();
            AtomicBoolean startCapturing = new AtomicBoolean(false);
            section.items.forEach(item -> {
                switch (item) {
                    case AssemblyTextItem it -> newSection.emit(it);
                    case Instruction insn -> {
                        if (insn == Instruction.Nullary.pushRegisters){
                            startCapturing.set(true);
                            newSection.emit(insn);
                        } else if (insn == Instruction.Nullary.popRegisters){
                            startCapturing.set(false);
                            newSection.emit(insn);
                        } else {
                            Instruction newInsn = insn.rebuild(vrArchMap);
                            newSection.emit(newInsn);
                            if (startCapturing.get()){
                                usedArchRegs.addAll(newInsn.registers().stream().filter(r -> graphColor.availableRegs.contains(r)).map(r -> (Register.Arch)r).collect(Collectors.toSet()));
                                if (insn instanceof Instruction.LoadAddress la && labels.contains(la.label)){
                                    usedLabels.add(la.label);
                                }
                            }
                        }
                    }
                    default -> throw new RuntimeException("Unexpected item type: " + item.getClass());
                }
            });

            ArrayList<Register.Arch> usedArchRegsList = new ArrayList<>(usedArchRegs);
            ArrayList<Label> usedLabelsList = new ArrayList<>(usedLabels);
            final AssemblyProgram.TextSection newSection2 = newProg.emitNewTextSection();

            // registers that can be used for pushing and popping
            Register.Arch pushPopReg1 = usedArchRegsList.size() > 0 ? usedArchRegsList.get(0) : null;
            Register.Arch pushPopReg2 = usedArchRegsList.size() > 1 ? usedArchRegsList.get(1) : null;

            newSection.items.forEach(item -> {
                switch (item) {
                    case AssemblyTextItem it -> newSection2.emit(it);
                    case Instruction insn -> {
                        if (insn == Instruction.Nullary.pushRegisters){
                            newSection2.emit("Original instruction: "+insn);
                            // push registers and spilled global variables
                            usedArchRegsList.forEach(r -> {
                                newSection2.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -Utils.WORD_SIZE);
                                newSection2.emit(OpCode.SW, r, Register.Arch.sp, 0);
                            });
                            usedLabelsList.forEach(l -> {
                                newSection2.emit(OpCode.LA, pushPopReg1, l);
                                newSection2.emit(OpCode.LW, pushPopReg1, pushPopReg1, 0);
                                newSection2.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -Utils.WORD_SIZE);
                                newSection2.emit(OpCode.SW, pushPopReg1, Register.Arch.sp, 0);
                            });
                        } else if (insn == Instruction.Nullary.popRegisters){
                            newSection2.emit("Original instruction: "+insn);
                            // pop registers and spilled global variables
                            usedLabelsList.reversed().forEach(l -> {
                                newSection2.emit(OpCode.LW, pushPopReg1, Register.Arch.sp, 0);
                                newSection2.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, Utils.WORD_SIZE);
                                newSection2.emit(OpCode.LA, pushPopReg2, l);
                                newSection2.emit(OpCode.SW, pushPopReg1, pushPopReg2, 0);
                            });
                            usedArchRegsList.reversed().forEach(r -> {
                                newSection2.emit(OpCode.LW, r, Register.Arch.sp, 0);
                                newSection2.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, Utils.WORD_SIZE);
                            });
                        } else {
                            newSection2.emit(insn);
                        }
                    }
                    default -> throw new RuntimeException("Unexpected item type: " + item.getClass());
                }

            });
        newProg.textSections.remove(newSection);
        });
    }

}
