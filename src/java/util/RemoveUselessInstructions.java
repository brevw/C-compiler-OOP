package util;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import gen.asm.AssemblyProgram;
import gen.asm.Instruction;
import gen.asm.Register;

public class RemoveUselessInstructions {

    public RemoveUselessInstructions() {
    }

    public void visit(AssemblyProgram program) {

        program.textSections.forEach(section -> {
        Map<Register.Virtual, Integer> registerUsed = new java.util.HashMap<>();
        Set<Instruction> instructionsToRemove = new HashSet<>();
            section.items.forEach(item -> {
                switch (item) {
                    case Instruction i -> {
                        Register r = i.def();
                        if (r != null && r.isVirtual() && !registerUsed.containsKey(r)) {
                            registerUsed.put( (Register.Virtual) r, 0);
                        }

                        i.uses().forEach(u -> {
                            if (u.isVirtual()) {
                                if (registerUsed.containsKey(u)) {
                                    registerUsed.put( (Register.Virtual) u, registerUsed.get(u) + 1);
                                } else {
                                    throw new AssertionError("Register not defined: " + u);
                                }
                            }
                        });
                    }
                    default -> {}
                }
            });

            // remove useless instructions in the section
            Set<Register.Virtual> uselessRegisters = new HashSet<>();
            registerUsed.forEach((r, count) -> {
                if (count == 0) {
                    uselessRegisters.add(r);
                }
            });

            Boolean detectChanges = true;
            while (detectChanges){
                detectChanges = false;
                section.items.forEach(item -> {
                    switch (item) {
                        case Instruction i -> {
                            if (uselessRegisters.contains(i.def())) {
                                instructionsToRemove.add(i);
                                // decrement use count of the used registers
                                i.uses().forEach(u -> {
                                    if (u.isVirtual()) {
                                        registerUsed.put((Register.Virtual) u, registerUsed.get(u) - 1);
                                    }
                                });
                            }
                        }
                        default -> {}
                    }
                });
                if (!instructionsToRemove.isEmpty()) {
                    detectChanges = true;
                    section.items.removeAll(instructionsToRemove);
                    // udate useless registers
                    registerUsed.forEach((r, count) -> {
                        if (count == 0 && !uselessRegisters.contains(r)) {
                            uselessRegisters.add(r);
                        }
                    });
                    instructionsToRemove.clear();
                }
            }

        });

    }
}
