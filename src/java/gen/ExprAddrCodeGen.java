package gen;

import ast.Expr;
import ast.VarExpr;
import ast.FieldAccessExpr;
import ast.StructType;
import ast.ArrayAccessExpr;
import ast.ValueAtExpr;
import gen.asm.AssemblyProgram;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.AssemblyProgram.TextSection;
import gen.asm.Register.Arch;
import util.Utils;

/**
 * Generates code to calculate the address of an expression and return the result in a register.
 */
public class ExprAddrCodeGen extends CodeGen {

    public ExprAddrCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    public Register visit(Expr e) {
        TextSection currentSection = asmProg.getCurrentTextSection();
        // switch over the LValues
        switch (e) {
            case VarExpr ve -> {
                Register reg = Register.Virtual.create();
                boolean isGlobalVar = Utils.isGlobalVar(ve.vd);
                if (isGlobalVar) {
                    currentSection.emit(OpCode.LA, reg, Label.get(ve.vd.name));
                } else {
                    currentSection.emit(OpCode.ADDI, reg, Arch.fp, ve.vd.fpOffset);
                }
                return reg;
            }
            case FieldAccessExpr fae -> {
                Register reg = Register.Virtual.create();
                Register base = visit(fae.structExpr);
                int offset = ((StructType)(fae.structExpr.type)).getOffset(fae.fieldName);
                currentSection.emit(OpCode.ADDI, reg, base, offset);
                return reg;
            }
            case ArrayAccessExpr aae -> {
                Register reg = Register.Virtual.create();
                Register base = visit(aae.arrayExpr);
                Register index = visit(aae.indexExpr);
                Register size = Register.Virtual.create();
                currentSection.emit(OpCode.LI, size, aae.type.getSize());
                currentSection.emit(OpCode.MUL, index, index, size);
                currentSection.emit(OpCode.ADD, reg, base, index);
                return reg;
            }
            case ValueAtExpr vae -> {
                return visit(vae.expr);
            }
            default -> throw new RuntimeException("Not an LValue");
        }
    }

}
