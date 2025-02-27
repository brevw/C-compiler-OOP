package gen;

import ast.ASTNode;
import ast.FunDef;
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

    boolean global = true;
    int fpOffset = 0;

    void visit(ASTNode n) {
        switch (n) {
            case VarDecl vd -> {
                int size = vd.type.getSize();
                if (global) {
                    // allocate in the data section
                    Label l = Label.get(vd.name);
                    asmProg.dataSection.emit(l);
                    asmProg.dataSection.emit(new Directive("space " + size));
                    if (size % Utils.WORD_SIZE != 0){
                        asmProg.dataSection.emit(new Directive("align " + Utils.WORD_ALIGNMENT_CONST));
                    }
                } else {
                    // allocate on the stack
                    fpOffset -= size + Utils.computeAlignmentOffset(size, Utils.WORD_SIZE);
                    vd.fpOffset = fpOffset;
                }
            }
            case FunDef fd -> {
                int returnSize = fd.type.getSize();
                int argumentsOffset = Utils.WORD_SIZE + returnSize + Utils.computeAlignmentOffset(returnSize, Utils.WORD_SIZE);

                this.global = false;
                visit(fd.block);
                this.global = true;
            }
            default -> {
                n.children().forEach(this::visit);
            }
        }
    }
}
