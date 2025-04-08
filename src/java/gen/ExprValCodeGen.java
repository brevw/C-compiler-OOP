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
import ast.NewInstance;
import ast.StrLiteral;
import ast.Type;
import ast.ChrLiteral;
import ast.ClassType;
import ast.FunCallExpr;
import ast.InstanceFunCallExpr;
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
                if (ve.vd.upgradeToReg != null && ve.vd.upgradeToReg) {
                    yield ve.vd.reg;
                } else {
                    Register reg = addrCodeGen.visit(ve);
                    reg = Utils.addrToValue(currentSection, reg, ve.vd.type);
                    yield reg;
                }
            }
            case FunCallExpr fce -> {
                Register returnReg = null;
                // precall
                // push arguments
                int argsSize = 0;
                for (Expr arg : fce.argsList.reversed()) {
                    Register argReg = visit(arg);
                    // if the argument is an array, pass the address of the array
                    int argSize = Utils.getSizeOfFunArgsAndReturnTypes(arg.type);
                    int offsetToAlignment = Utils.computeAlignmentOffset(argSize, Utils.WORD_SIZE);
                    argsSize += argSize + offsetToAlignment;
                    Register alignedArgAddr = Register.Virtual.create();
                    currentSection.emit(OpCode.ADDIU, alignedArgAddr, Arch.sp, - argsSize);
                    Utils.copyToAddr(currentSection, alignedArgAddr, argReg, arg.type, true);
                }
                if (argsSize > 0) {
                    currentSection.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -argsSize);
                }

                // reserve space for return value
                int returnSize = Utils.getSizeOfFunArgsAndReturnTypes(fce.type);
                returnSize += Utils.computeAlignmentOffset(returnSize, Utils.WORD_SIZE);
                if (returnSize > 0) {
                    currentSection.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -returnSize);
                }

                // call function
                currentSection.emit(OpCode.JAL, Label.get(fce.name));

                // postreturn
                // read the return value from stack (if there is one, it is pointed by $sp)
                if (returnSize > 0) {
                    returnReg = Register.Virtual.create();
                    currentSection.emit(OpCode.ADDI, returnReg, Arch.sp, 0);
                    returnReg = Utils.addrToValue(currentSection, returnReg, fce.type);
                } else {
                    returnReg = Arch.sp; // return value is in $sp as it won't be used
                }

                // reset stack
                currentSection.emit(OpCode.ADDIU, Arch.sp, Arch.sp, argsSize + returnSize);
                yield returnReg;
            }
            case ArrayAccessExpr aae -> {
                Register addr = addrCodeGen.visit(aae);
                yield Utils.addrToValue(currentSection, addr, aae.type);
            }
            case FieldAccessExpr fae -> {
                Register addr = addrCodeGen.visit(fae);
                yield Utils.addrToValue(currentSection, addr, fae.type);
            }
            case ValueAtExpr vae -> {
                Register addr = addrCodeGen.visit(vae);
                yield Utils.addrToValue(currentSection, addr, vae.type);
            }
            case AddressOfExpr aoe -> {
                yield addrCodeGen.visit(aoe.expr);
            }
            case SizeOfExpr soe -> {
                Register reg = Register.Virtual.create();
                currentSection.emit(OpCode.LI, reg, soe.ofType.getSize());
                yield reg;
            }
            case TypecastExpr tce -> {
                // for the cast (char -> int) do nothing (both are unsigned)
                // for the cast (pointer -> pointer) do nothing (value is the same pointer address)
                // for the cast (array -> pointer) do nothing (value is the same address)
                yield visit(tce.expr);
            }
            case Assign a -> {
                if (a.lhs instanceof VarExpr ve && ve.vd.upgradeToReg != null && ve.vd.upgradeToReg) {
                    Register rhsReg = visit(a.rhs);
                    currentSection.emit(OpCode.ADDI, ve.vd.reg, rhsReg, 0);
                    yield ve.vd.reg;
                } else {
                    Register lhsReg = addrCodeGen.visit(a.lhs);
                    Register rhsReg = visit(a.rhs);
                    Type type = a.lhs.type;
                    yield Utils.copyToAddr(currentSection, lhsReg, rhsReg, type, false);
                }
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
            case NewInstance ni -> {
                Register reg = Register.Virtual.create();
                Register temp = Register.Virtual.create();
                currentSection.emit(OpCode.LI, Arch.v0, Utils.MALLOC_CODE);
                currentSection.emit(OpCode.LI, Arch.a0, ni.type.getSize());
                currentSection.emit(OpCode.SYSCALL);
                currentSection.emit(OpCode.ADDIU, reg, Arch.v0, 0);
                currentSection.emit(OpCode.LA, temp, ni.ofClass.decl.virtualTableLabel); // save vtable address
                currentSection.emit(OpCode.SW, temp, reg, 0);
                yield reg;
            }
            case InstanceFunCallExpr ifce -> {
                Register reg = visit(ifce.classInstance);
                Register funAddr = Register.Virtual.create();
                currentSection.emit(OpCode.LW, funAddr , reg, 0); // load vtable address
                int functionNumber = ((ClassType) ifce.classInstance.type).decl.funToLabel.entrySet().stream().map(entry -> entry.getKey()).toList().indexOf(ifce.funCall.name);
                currentSection.emit(OpCode.LW, funAddr, funAddr, functionNumber * Utils.WORD_SIZE); // load function address


                Register returnReg = null;
                // precall
                int pointerSize = Utils.WORD_SIZE;
                currentSection.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -Utils.WORD_SIZE); // reserve space for the this pointer
                currentSection.emit(OpCode.SW, reg, Arch.sp, 0); // push the this pointer

                int argsSize = 0;
                var fce = ifce.funCall;
                for (Expr arg : fce.argsList.reversed()) {
                    Register argReg = visit(arg);
                    // if the argument is an array, pass the address of the array
                    int argSize = Utils.getSizeOfFunArgsAndReturnTypes(arg.type);
                    int offsetToAlignment = Utils.computeAlignmentOffset(argSize, Utils.WORD_SIZE);
                    argsSize += argSize + offsetToAlignment;
                    Register alignedArgAddr = Register.Virtual.create();
                    currentSection.emit(OpCode.ADDIU, alignedArgAddr, Arch.sp, - argsSize);
                    Utils.copyToAddr(currentSection, alignedArgAddr, argReg, arg.type, true);
                }
                if (argsSize > 0) {
                    currentSection.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -argsSize);
                }

                // reserve space for return value
                int returnSize = Utils.getSizeOfFunArgsAndReturnTypes(fce.type);
                returnSize += Utils.computeAlignmentOffset(returnSize, Utils.WORD_SIZE);
                if (returnSize > 0) {
                    currentSection.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -returnSize);
                }

                // JALR function
                currentSection.emit(OpCode.JALR, funAddr);

                // postreturn
                // read the return value from stack (if there is one, it is pointed by $sp)
                if (returnSize > 0) {
                    returnReg = Register.Virtual.create();
                    currentSection.emit(OpCode.ADDI, returnReg, Arch.sp, 0);
                    returnReg = Utils.addrToValue(currentSection, returnReg, fce.type);
                } else {
                    returnReg = Arch.sp; // return value is in $sp as it won't be used
                }

                // reset stack
                currentSection.emit(OpCode.ADDIU, Arch.sp, Arch.sp, argsSize + returnSize + pointerSize);
                yield returnReg;
            }
            default -> throw new RuntimeException("Unknown expression type: " + e);
        };
    }
}
