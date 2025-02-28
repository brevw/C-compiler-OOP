package gen;

import java.util.HashMap;
import java.util.Map;

import ast.ASTNode;
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
    boolean global = true;
    int fpOffset = 0;

    public static Label getStrLabel(String str) {
        if (!strToLabels.containsKey(str)) {
            throw new IllegalArgumentException("String was not allocated: " + str);
        }
        return strToLabels.get(str);
    }

    void visit(ASTNode n) {
        switch (n) {
            case VarDecl vd -> {
                int size = vd.type.getSize();
                if (global) {
                    // allocate in the data section
                    Label l = Label.get(vd.name);
                    asmProg.dataSection.emit(l);
                    asmProg.dataSection.emit(new Directive(Utils.SPACE_DIRECTIVE + size));
                    if (size % Utils.WORD_SIZE != 0){
                        asmProg.dataSection.emit(new Directive(Utils.ALIGN_DIRECTIVE + Utils.WORD_ALIGNMENT_CONST));
                    }
                } else {
                    // allocate on the stack
                    fpOffset -= size + Utils.computeAlignmentOffset(size, Utils.WORD_SIZE);
                    vd.fpOffset = fpOffset;
                }
            }
            case FunDef fd -> {
                this.fpOffset = 0;
                int returnSize = fd.type.getSize();
                int argumentsOffset = Utils.WORD_SIZE + returnSize + Utils.computeAlignmentOffset(returnSize, Utils.WORD_SIZE);
                for (VarDecl vd : fd.params.reversed()) {
                    int size = vd.type.getSize();
                    vd.fpOffset = argumentsOffset;
                    argumentsOffset += size + Utils.computeAlignmentOffset(size, Utils.WORD_SIZE);
                }

                this.fpOffset -= Utils.WORD_SIZE;
                this.global = false;
                visit(fd.block);
                this.global = true;
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
            default -> {
                if (!(n instanceof StructTypeDecl || n instanceof FunDecl)) {
                    n.children().forEach(this::visit);
                }
            }
        }
    }
}
