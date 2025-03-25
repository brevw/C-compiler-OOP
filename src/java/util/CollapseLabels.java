package util;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

import gen.asm.AssemblyProgram;
import gen.asm.AssemblyTextItem;
import gen.asm.Instruction;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Instruction.BinaryBranch;
import gen.asm.Instruction.Jump;
import gen.asm.Instruction.UnaryBranch;

public class CollapseLabels {

    public AssemblyProgram visit(AssemblyProgram program) {
        AssemblyProgram newProgram = new AssemblyProgram();
        Map<Label, Label> labelMap = new HashMap<>();
        collectLabels(program, labelMap);

        // copy the data section
        newProgram.dataSection.items.addAll(program.dataSection.items);

        program.textSections.forEach(section -> {
            AssemblyProgram.TextSection newSection = newProgram.emitNewTextSection();

            // collapse labels in the text section
            section.items.forEach(item -> {
                switch (item) {
                    case AssemblyTextItem i -> {
                        if (i instanceof Label l) {
                            if (labelMap.containsValue(l)) {
                                newSection.items.add(l);
                            }
                        } else {
                            newSection.items.add(i);
                        }
                    }
                    case Instruction i -> {
                        switch (i) {
                            case UnaryBranch ub -> newSection.items.add(new UnaryBranch((OpCode.UnaryBranch) ub.opcode, ub.src, labelMap.get(ub.label)));
                            case BinaryBranch bb -> newSection.items.add(new BinaryBranch((OpCode.BinaryBranch) bb.opcode, bb.src1, bb.src2, labelMap.get(bb.label)));
                            case Jump j -> newSection.items.add(new Jump((OpCode.Jump) j.opcode, labelMap.get(j.label)));
                            default -> newSection.items.add(i);
                        }
                    }
                    default -> throw new AssertionError();
                }
            });
        });

        return newProgram;
    }


    private void collectLabels(AssemblyProgram program, Map<Label, Label> labelMap) {

        AtomicReference<Label> label = new AtomicReference<>(null);
        program.textSections.forEach(section -> {
            section.items.forEach(item -> {
                switch (item) {
                    case Label l -> {
                        if (label.get() != null) {
                            labelMap.put(l, label.get());
                        } else {
                            label.set(l);
                        }
                    }
                    default -> {
                        if (label.get() != null) {
                            labelMap.put(label.get(), label.get());
                        }
                        label.set(null);
                    }
                }
            });
        });

    }
}
