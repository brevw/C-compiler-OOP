package gen;

import ast.Expr;
import ast.VarExpr;
import ast.FieldAccessExpr;
import ast.StructType;
import ast.ArrayAccessExpr;
import ast.ArrayType;
import ast.ClassType;
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
        ExprValCodeGen evcg = new ExprValCodeGen(asmProg);
        // switch over the LValues
        switch (e) {
            case VarExpr ve -> {
                Register reg = Register.Virtual.create();
                boolean isGlobalVar = Utils.isGlobalVar(ve.vd);
                if (isGlobalVar) {
                    currentSection.emit(OpCode.LA, reg, Label.get(ve.vd.name));
                } else {
                    if (ve.vd.upgradeToReg != null && ve.vd.upgradeToReg) {
                        reg = ve.vd.reg;
                    } else {
                        if (ve.vd.classVar && !ve.vd.isFunArg) {
                            currentSection.emit(OpCode.LW, reg, Arch.fp, Utils.WORD_SIZE + FunCodeGen.currentFunction.returnSize);
                            currentSection.emit(OpCode.ADDIU, reg, reg, FunCodeGen.currentClass.getOffset(ve.vd.name));
                        } else {
                            currentSection.emit(OpCode.ADDIU, reg, Arch.fp, ve.vd.fpOffset);
                            // deference the array as it is passed by reference
                            if (ve.vd.type instanceof ArrayType && ve.vd.isFunArg) {
                                currentSection.emit(OpCode.LW, reg, reg, 0);
                            }
                        }
                    }
                }
                return reg;
            }
            case FieldAccessExpr fae -> {
                Register reg = Register.Virtual.create();
                Register base = evcg.visit(fae.structExpr);
                var type = fae.structExpr.type;
                int offset = type instanceof StructType ? ((StructType)type).getOffset(fae.fieldName) : ((ClassType)type).getOffset(fae.fieldName);
                currentSection.emit(OpCode.ADDI, reg, base, offset);
                return reg;
            }
            case ArrayAccessExpr aae -> {
                Register reg = Register.Virtual.create();
                Register base = evcg.visit(aae.arrayExpr);
                Register index = evcg.visit(aae.indexExpr);
                Register size = Register.Virtual.create();
                currentSection.emit(OpCode.LI, size, aae.type.getSize());
                currentSection.emit(OpCode.MUL, reg, index, size);
                currentSection.emit(OpCode.ADD, reg, reg, base);
                return reg;
            }
            case ValueAtExpr vae -> {
                return evcg.visit(vae.expr);
            }
            default -> throw new RuntimeException("Not an LValue");
        }
    }

}
