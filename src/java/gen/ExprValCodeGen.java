package gen;

import ast.Expr;
import ast.VarExpr;
import ast.FieldAccessExpr;
import ast.ArrayAccessExpr;
import ast.ValueAtExpr;
import ast.BaseType;

import ast.AddressOfExpr;
import ast.SizeOfExpr;
import ast.TypecastExpr;
import ast.Assign;
import ast.BinOp;
import ast.IntLiteral;
import ast.StrLiteral;
import ast.ChrLiteral;
import ast.FunCallExpr;
import gen.asm.AssemblyProgram;
import gen.asm.AssemblyProgram.TextSection;
import gen.asm.Register;
import gen.asm.Register.*;
import gen.asm.OpCode;
import gen.asm.Label;


/**
 * Generates code to evaluate an expression and return the result in a register.
 */
public class ExprValCodeGen extends CodeGen {
    private static final int WORD_SIZE = 4;

    public ExprValCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    public Register visit(Expr e) {
        TextSection currentSection = asmProg.getCurrentTextSection();
        return switch (e) {
            case VarExpr ve -> {
                Register reg = Register.Virtual.create();
                //TODO: implement
                yield reg;
            }
            case FunCallExpr fce -> {
                Register returnReg = null;
                // precall
                // push arguments (in reverse order)
                int argsSize = fce.argsList.reversed().stream().mapToInt(arg -> {
                    int size = arg.type.getSize();
                    // TODO: pass arguments on the stack

                    return size;
                }).sum();

                // reserve space for return value
                int returnSize = fce.type.getSize();
                if (returnSize > 0) {
                    currentSection.emit(OpCode.ADDI, Arch.sp, Arch.sp, -returnSize);
                }

                // call function
                currentSection.emit(OpCode.JAL, Label.get(fce.name));

                // postreturn
                // TODO: read the return value from stack

                // reset stack
                currentSection.emit(OpCode.ADDI, Arch.sp, Arch.sp, argsSize + returnSize);



                yield returnReg;
            }
            case ArrayAccessExpr aae -> null;
            case FieldAccessExpr fae -> null;
            case ValueAtExpr vae -> null;
            case AddressOfExpr aoe -> null;
            case SizeOfExpr soe -> {
                Register reg = Register.Virtual.create();
                currentSection.emit(OpCode.LI, reg, e.type.getSize());
                yield reg;
            }
            case TypecastExpr tce -> null;
            case Assign a -> null;
            case BinOp bo -> {
                switch (bo.op) {
                    case ADD -> {
                        Register lhsReg = visit(bo.lhs);
                        Register rhsReg = visit(bo.rhs);
                        Register resReg = Register.Virtual.create();
                        currentSection.emit(OpCode.ADD, resReg, lhsReg, rhsReg);
                        yield resReg;
                    }
                    case SUB -> {
                        Register lhsReg = visit(bo.lhs);
                        Register rhsReg = visit(bo.rhs);
                        Register resReg = Register.Virtual.create();
                        currentSection.emit(OpCode.SUB, resReg, lhsReg, rhsReg);
                        yield resReg;
                    }
                    case MUL -> {
                        Register lhsReg = visit(bo.lhs);
                        Register rhsReg = visit(bo.rhs);
                        Register resReg = Register.Virtual.create();
                        currentSection.emit(OpCode.MUL, resReg, lhsReg, rhsReg);
                        yield resReg;
                    }
                    case DIV -> {
                        Register lhsReg = visit(bo.lhs);
                        Register rhsReg = visit(bo.rhs);
                        Register resReg = Register.Virtual.create();
                        currentSection.emit(OpCode.DIV, lhsReg, rhsReg);
                        currentSection.emit(OpCode.MFLO, resReg);
                        yield resReg;
                    }
                    case MOD -> {
                        Register lhsReg = visit(bo.lhs);
                        Register rhsReg = visit(bo.rhs);
                        Register resReg = Register.Virtual.create();
                        currentSection.emit(OpCode.DIV, lhsReg, rhsReg);
                        currentSection.emit(OpCode.MFHI, resReg);
                        yield resReg;
                    }
                    case GT -> {
                        Register lhsReg = visit(bo.lhs);
                        Register rhsReg = visit(bo.rhs);
                        Register resReg = Register.Virtual.create();
                        currentSection.emit(OpCode.SLT, resReg, rhsReg, lhsReg);
                        yield resReg;
                    }
                    case LT -> {
                        Register lhsReg = visit(bo.lhs);
                        Register rhsReg = visit(bo.rhs);
                        Register resReg = Register.Virtual.create();
                        currentSection.emit(OpCode.SLT, resReg, lhsReg, rhsReg);
                        yield resReg;
                    }
                    case GE -> {
                        Register lhsReg = visit(bo.lhs);
                        Register rhsReg = visit(bo.rhs);
                        Register resReg = Register.Virtual.create();
                        currentSection.emit(OpCode.SLT, resReg, lhsReg, rhsReg);
                        currentSection.emit(OpCode.XORI, resReg, resReg, 1);
                        yield resReg;
                    }
                    case LE -> {
                        Register lhsReg = visit(bo.lhs);
                        Register rhsReg = visit(bo.rhs);
                        Register resReg = Register.Virtual.create();
                        currentSection.emit(OpCode.SLT, resReg, rhsReg, lhsReg);
                        currentSection.emit(OpCode.XORI, resReg, resReg, 1);
                        yield resReg;
                    }
                    case NE -> {
                        Register lhsReg = visit(bo.lhs);
                        Register rhsReg = visit(bo.rhs);
                        Register resReg = Register.Virtual.create();
                        currentSection.emit(OpCode.XOR, resReg, lhsReg, rhsReg);
                        currentSection.emit(OpCode.SLTU, resReg, Arch.zero, resReg);
                        yield resReg;
                    }
                    case EQ -> {
                        Register lhsReg = visit(bo.lhs);
                        Register rhsReg = visit(bo.rhs);
                        Register resReg = Register.Virtual.create();
                        currentSection.emit(OpCode.XOR, resReg, lhsReg, rhsReg);
                        currentSection.emit(OpCode.SLTIU, resReg, resReg, 1);
                        yield resReg;
                    }
                    case OR -> {
                        Label trueLabel = Label.create();
                        Label endLabel = Label.create();
                        Register resReg = Register.Virtual.create();
                        Register lhsReg = visit(bo.lhs);

                        // short-circuit evaluation
                        currentSection.emit(OpCode.BNE, lhsReg, Arch.zero, trueLabel);
                        Register rhsReg = visit(bo.rhs);
                        currentSection.emit(OpCode.BNE, rhsReg, Arch.zero, trueLabel);
                        currentSection.emit(OpCode.LI, resReg, 0);
                        currentSection.emit(OpCode.J, endLabel);

                        // emit true
                        currentSection.emit(trueLabel);
                        currentSection.emit(OpCode.LI, resReg, 1);

                        // emit end
                        currentSection.emit(endLabel);
                        yield resReg;
                    }
                    case AND -> {
                        Label falseLabel = Label.create();
                        Label endLabel = Label.create();
                        Register resReg = Register.Virtual.create();
                        Register lhsReg = visit(bo.lhs);

                        // short-circuit evaluation
                        currentSection.emit(OpCode.BEQ, lhsReg, Arch.zero, falseLabel);
                        Register rhsReg = visit(bo.rhs);
                        currentSection.emit(OpCode.BEQ, rhsReg, Arch.zero, falseLabel);
                        currentSection.emit(OpCode.LI, resReg, 1);
                        currentSection.emit(OpCode.J, endLabel);

                        // emit false
                        currentSection.emit(falseLabel);
                        currentSection.emit(OpCode.LI, resReg, 0);

                        // emit end
                        currentSection.emit(endLabel);
                        yield resReg;
                    }
                    default -> throw new RuntimeException("Unknown binary operator: " + bo.op);
                }
            }
            case IntLiteral il -> {
                Register reg = Register.Virtual.create();
                currentSection.emit(OpCode.LI, reg, il.intValue);
                yield reg;
            }
            case StrLiteral sl -> null;
            case ChrLiteral cl -> {
                Register reg = Register.Virtual.create();
                currentSection.emit(OpCode.LI, reg, cl.charValue);
                yield reg;
            }
            default -> throw new RuntimeException("Unknown expression type: " + e);
        };
    }
}
