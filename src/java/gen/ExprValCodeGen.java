package gen;

import ast.Expr;
import ast.VarExpr;
import ast.FieldAccessExpr;
import ast.ArrayAccessExpr;
import ast.ValueAtExpr;

import ast.AddressOfExpr;
import ast.SizeOfExpr;
import ast.TypecastExpr;
import ast.Assign;
import ast.BinOp;
import ast.IntLiteral;
import ast.StrLiteral;
import ast.Type;
import ast.ChrLiteral;
import ast.FunCallExpr;
import gen.asm.AssemblyProgram;
import gen.asm.AssemblyProgram.TextSection;
import gen.asm.Register;
import gen.asm.Register.*;
import util.Utils;
import gen.asm.OpCode;
import gen.asm.Label;


/**
 * Generates code to evaluate an expression and return the result in a register.
 */
public class ExprValCodeGen extends CodeGen {
    public ExprValCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    public Register visit(Expr e) {
        ExprAddrCodeGen addrCodeGen = new ExprAddrCodeGen(asmProg);
        TextSection currentSection = asmProg.getCurrentTextSection();
        return switch (e) {
            case VarExpr ve -> {
                Register reg = Register.Virtual.create();
                boolean isGlobal = ve.vd.fpOffset != null;
                if (isGlobal) {
                    currentSection.emit(OpCode.LA, reg, Label.get(ve.vd.name));
                } else {
                    currentSection.emit(OpCode.ADDI, reg, Arch.fp, ve.vd.fpOffset);
                    reg = Utils.addrToValue(currentSection, reg, ve.vd.type);
                }
                yield reg;
            }
            case FunCallExpr fce -> {
                Register returnReg = null;
                // precall
                // push arguments
                int argsSize = 0;
                for (Expr arg : fce.argsList) {
                    Register argReg = visit(arg);
                    int argSize = arg.type.getSize();
                    int offsetToAlignment = Utils.computeAlignmentOffset(argSize, Utils.WORD_SIZE);
                    argsSize += argSize + offsetToAlignment;
                    Register alignedArgAddr = Register.Virtual.create();
                    currentSection.emit(OpCode.ADDIU, alignedArgAddr, Arch.sp, - (argSize + offsetToAlignment));
                    Utils.copyToAddr(currentSection, alignedArgAddr, argReg, arg.type);
                }

                // reserve space for return value
                int returnSize = fce.type.getSize();
                if (returnSize > 0) {
                    currentSection.emit(OpCode.ADDI, Arch.sp, Arch.sp, -returnSize);
                }

                // call function
                currentSection.emit(OpCode.JAL, Label.get(fce.name));

                // postreturn
                // read the return value from stack
                Register returnAddr = Register.Virtual.create();
                currentSection.emit(OpCode.ADDI, returnAddr, Arch.sp, 0);

                // reset stack
                currentSection.emit(OpCode.ADDI, Arch.sp, Arch.sp, argsSize + returnSize);
                yield returnReg;
            }
            case ArrayAccessExpr aae -> {
                Register addr = addrCodeGen.visit(aae);
                yield Utils.addrToValue(currentSection, addr, aae.type);
            }
            case FieldAccessExpr fae -> {
                Register addr = visit(fae);
                yield Utils.addrToValue(currentSection, addr, fae.type);
            }
            case ValueAtExpr vae -> {
                Register addr = visit(vae.expr);
                yield Utils.addrToValue(currentSection, addr, vae.type);
            }
            case AddressOfExpr aoe -> {
                yield addrCodeGen.visit(aoe.expr);
            }
            case SizeOfExpr soe -> {
                Register reg = Register.Virtual.create();
                currentSection.emit(OpCode.LI, reg, soe.type.getSize());
                yield reg;
            }
            case TypecastExpr tce -> {
                // we only support the following cast (char -> int)
                // both are unsigned so do nothing
                yield visit(tce.expr);
            }
            case Assign a -> {
                Register lhsReg = addrCodeGen.visit(a.lhs);
                Register rhsReg = visit(a.rhs);
                Type type = a.lhs.type;
                yield Utils.copyToAddr(currentSection, lhsReg, rhsReg, type);
            }
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
            case StrLiteral sl -> {
                Register reg = Register.Virtual.create();
                currentSection.emit(OpCode.LA, reg, MemAllocCodeGen.getStrLabel(sl.strValue));
                yield reg;
            }
            case ChrLiteral cl -> {
                Register reg = Register.Virtual.create();
                currentSection.emit(OpCode.LI, reg, Utils.charToUnicode(cl.charValue));
                yield reg;
            }
            default -> throw new RuntimeException("Unknown expression type: " + e);
        };
    }
}
