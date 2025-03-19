package regalloc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;

import gen.asm.AssemblyPass;
import gen.asm.AssemblyProgram;
import gen.asm.AssemblyTextItem;
import gen.asm.Directive;
import gen.asm.Instruction;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import util.Utils;

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
        List<Register.Arch> availableColors = List.of(Register.Arch.t0, Register.Arch.t1, Register.Arch.t2, Register.Arch.t3, Register.Arch.t4, Register.Arch.t5, Register.Arch.t6, Register.Arch.t7, Register.Arch.t8, Register.Arch.t9
                                                    , Register.Arch.s0, Register.Arch.s1, Register.Arch.s2, Register.Arch.s3, Register.Arch.s4, Register.Arch.s5, Register.Arch.s6, Register.Arch.s7);
        GraphColor graphColor = new GraphColor(availableColors);
        graphColor.colorGraph(finalIG);

        // create new program with architecture registers
        Map<Register.Virtual, Register.Arch> vrArchMap = finalIG.getNodes().stream().filter(n -> n.archReg != null).collect(Collectors.toMap(n -> n.reg, n -> n.archReg));
        Map<Register.Virtual, Label> vrSpilledMap = collectSpilledVirtualRegisters(finalIG.getNodes().stream().filter(n -> n.archReg == null).map(n -> n.reg).toList());
        // copy the data section
        asmProgWithVirtualRegs.dataSection.items.forEach( item -> {
            newProg.dataSection.emit(item);
        });
        // allocate one label for each virtual register in a new data section
        newProg.dataSection.emit("Allocated labels for virtual registers");
        vrSpilledMap.forEach((vr, lbl) -> {
            newProg.dataSection.emit(lbl);
            newProg.dataSection.emit(new Directive(Utils.SPACE_DIRECTIVE + Utils.WORD_SIZE));
        });
        // rebuild instructions in the text section
        asmProgWithVirtualRegs.textSections.forEach( section -> {
            final AssemblyProgram.TextSection newSection = newProg.emitNewTextSection();
            Set<Register.Arch> usedArchRegs = new HashSet<>();
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
                            Instruction newInsn = emitInstructionWithoutVirtualRegister(insn, vrArchMap, vrSpilledMap, newSection, graphColor);
                            if (startCapturing.get()){
                                usedArchRegs.addAll(newInsn.registers().stream().filter(r -> graphColor.availableRegs.contains(r)).map(r -> (Register.Arch)r).collect(Collectors.toSet()));
                            }
                        }
                    }
                    default -> throw new RuntimeException("Unexpected item type: " + item.getClass());
                }
            });

            ArrayList<Register.Arch> usedArchRegsList = new ArrayList<>(usedArchRegs);
            ArrayList<Label> usedLabelsList = new ArrayList<>(vrSpilledMap.values());
            final AssemblyProgram.TextSection newSection2 = newProg.emitNewTextSection();
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
                                newSection2.emit(OpCode.LA, graphColor.spillReg1, l);
                                newSection2.emit(OpCode.LW, graphColor.spillReg1, graphColor.spillReg1, 0);
                                newSection2.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -Utils.WORD_SIZE);
                                newSection2.emit(OpCode.SW, graphColor.spillReg1, Register.Arch.sp, 0);
                            });
                        } else if (insn == Instruction.Nullary.popRegisters){
                            newSection2.emit("Original instruction: "+insn);
                            // pop registers and spilled global variables
                            usedLabelsList.reversed().forEach(l -> {
                                newSection2.emit(OpCode.LW, graphColor.spillReg1, Register.Arch.sp, 0);
                                newSection2.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, Utils.WORD_SIZE);
                                newSection2.emit(OpCode.LA, graphColor.spillReg2, l);
                                newSection2.emit(OpCode.SW, graphColor.spillReg1, graphColor.spillReg2, 0);
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


        return newProg;
    }

    // collect all spilled virtual registers and assign them a label
    private static Map<Register.Virtual, Label>  collectSpilledVirtualRegisters(List<Register.Virtual> spilledRegs) {
        final Map<Register.Virtual, Label> vrSpilledMap = new HashMap<>();
        spilledRegs.forEach(vr -> {
            Label l = Label.create(vr.toString());
            vrSpilledMap.put(vr, l);
        });
        return vrSpilledMap;
    }

    // emit the instruction with all virtual registers replaced by architectural registers given a mapping from virtual to architectural registers
    private static Instruction emitInstructionWithoutVirtualRegister(Instruction insn, Map<Register.Virtual, Register.Arch> vrArchMap, Map<Register.Virtual, Label> vrSpilledMap, AssemblyProgram.TextSection section, GraphColor graphColor) {

        section.emit("Original instruction: "+insn);

        final Map<Register, Register> vrToAr = new HashMap<>();
        List<Register.Arch> spillRegs = List.of(graphColor.spillReg1, graphColor.spillReg2);

        AtomicInteger spillRegIndex = new AtomicInteger(0);
        insn.registers().forEach(reg -> {
            if (reg.isVirtual()) {
                // regular virtual register
                if (vrArchMap.containsKey(reg)) {
                    vrToAr.put(reg, vrArchMap.get(reg));
                } else
                // spilled virtual register
                if (vrSpilledMap.containsKey(reg)) {
                    Label label = vrSpilledMap.get(reg);
                    Register tmp = spillRegs.get(spillRegIndex.getAndIncrement() % spillRegs.size());
                    vrToAr.put(reg, tmp);
                } else
                // virtual register not found in the mapping
                throw new RuntimeException("Virtual register not found in the mapping: " + reg);
            }
        });


        insn.uses().forEach(reg -> {
            if (reg.isVirtual() && vrSpilledMap.containsKey(reg)) {
                    Register tmp = vrToAr.get(reg);
                    Label label = vrSpilledMap.get(reg);
                    section.emit(OpCode.LA, tmp, label);
                    section.emit(OpCode.LW, tmp, tmp, 0);
            }
        });

        Instruction newInsn = insn.rebuild(vrToAr);
        section.emit(newInsn);

        if (insn.def() != null) {
            if (insn.def().isVirtual() && vrSpilledMap.containsKey(insn.def())) {
                Register tmpVal = vrToAr.get(insn.def());
                Register tmpAddr = spillRegs.get(spillRegIndex.getAndIncrement() % spillRegs.size());
                Label label = vrSpilledMap.get(insn.def());

                section.emit(OpCode.LA, tmpAddr, label);
                section.emit(OpCode.SW, tmpVal, tmpAddr, 0);
            }
        }
        return newInsn;
    }


}
