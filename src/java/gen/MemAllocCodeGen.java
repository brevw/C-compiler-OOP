package gen;

import java.util.HashMap;
import java.util.Map;

import ast.ASTNode;
import ast.ClassDecl;
import ast.FunDecl;
import ast.FunDef;
import ast.StrLiteral;
import ast.StructTypeDecl;
import ast.VarDecl;
import gen.asm.AssemblyProgram;
import gen.asm.Directive;
import gen.asm.Label;
import util.Utils;

/* This allocator should deal with all global and local variable declarations. */

public class MemAllocCodeGen extends CodeGen {
    public MemAllocCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    private static final Map<String, Label> strToLabels = new HashMap<>();
    private boolean global = true;
    private int fpOffset = 0;
    private FunDef currentFunction = null;

    public static Label getStrLabel(String str) {
        if (!strToLabels.containsKey(str)) {
            throw new IllegalArgumentException("String was not allocated: " + str);
        }
        return strToLabels.get(str);
    }

    void visit(ASTNode n) {
        switch (n) {
            case VarDecl vd -> {
                int size = vd.isFunArg ? Utils.getSizeOfFunArgsAndReturnTypes(vd.type) : vd.type.getSize();
                if (global) {
                    // allocate in the data section
                    Label l = Label.get(vd.name);
                    asmProg.dataSection.emit(l);
                    asmProg.dataSection.emit(new Directive(Utils.SPACE_DIRECTIVE + size));
                    asmProg.dataSection.emit(new Directive(Utils.ALIGN_DIRECTIVE + Utils.WORD_ALIGNMENT_CONST));
                } else {
                    // allocate on the stack
                    int allocatedSize = vd.upgradeToReg != null && vd.upgradeToReg == true ? 0 : size + Utils.computeAlignmentOffset(size, Utils.WORD_SIZE);
                    fpOffset -= allocatedSize;
                    currentFunction.localVarSize += allocatedSize;
                    vd.fpOffset = fpOffset;
                }
            }
            case FunDef fd -> {
                FunDef oldFunction = currentFunction;
                currentFunction = fd;

                this.fpOffset = 0;
                if (!fd.name.equals(Utils.MAIN_FUNCTION)) {
                    int returnSize = Utils.getSizeOfFunArgsAndReturnTypes(fd.type);
                    returnSize += Utils.computeAlignmentOffset(returnSize, Utils.WORD_SIZE);
                    fd.returnSize = returnSize;
                    int argumentsOffset = Utils.WORD_SIZE + returnSize;
                    for (VarDecl vd : fd.params) {
                        // array arguments are passed by reference
                        int size = Utils.getSizeOfFunArgsAndReturnTypes(vd.type);
                        vd.fpOffset = argumentsOffset;
                        argumentsOffset += size + Utils.computeAlignmentOffset(size, Utils.WORD_SIZE);
                    }

                    // check if we need to skip the return address
                    boolean hasCall = Utils.hasCall(fd);
                    if (hasCall) {
                        this.fpOffset -= Utils.WORD_SIZE;
                    }
                } // else do nothing as fp is init to 0x000
                this.global = false;
                visit(fd.block);
                this.global = true;

                currentFunction = oldFunction;
            }
            case StrLiteral st -> {
                if (strToLabels.containsKey(st.strValue)) {
                    return;
                }
                Label l = Label.create(Utils.STR_SUFFIX);
                asmProg.dataSection.emit(l);
                asmProg.dataSection.emit(new Directive(Utils.ASCIIZ_DIRECTIVE + Utils.strToAsciiz(st.strValue)));
                asmProg.dataSection.emit(new Directive(Utils.ALIGN_DIRECTIVE + Utils.WORD_ALIGNMENT_CONST));
                strToLabels.put(st.strValue, l);
            }

            case ClassDecl cd -> {
                cd.funDefs.forEach(fd -> visit(fd));
                // set class attributes as non-global
                cd.varDecls.forEach(vd -> {
                    vd.fpOffset = 0; // put anything
                });
            }

            default -> {
                if (!(n instanceof StructTypeDecl || n instanceof FunDecl)) {
                    n.children().forEach(this::visit);
                }
            }
        }
    }
}
