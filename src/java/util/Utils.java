package util;

import java.util.ArrayList;
import java.util.List;

import ast.*;
import ast.VarDecl;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.AssemblyProgram.TextSection;

public class Utils {
    public static final int WORD_SIZE = 4;
    public static final int WORD_ALIGNMENT_CONST = 2;

    // used for str code allocation
    public static final String STR_SUFFIX = "str";

    // used for while code gen
    public static final String BODY_SUFFIX = "body";
    public static final String NEXT_SUFFIX = "next";
    public static final String POSTTEST_SUFFIX = "posttest";

    // used for if code gen
    public static final String ELSE_SUFFIX = "ELSE";
    public static final String END_SUFFIX = "END";

    // directives
    public static final String ASCIIZ_DIRECTIVE = "asciiz ";
    public static final String SPACE_DIRECTIVE = "space ";
    public static final String ALIGN_DIRECTIVE = "align ";
    public static final String GLOBAL_DIRECTIVE = "globl ";
    public static final String SET_DIRECTIVE = "set ";

    // for functions
    public static final String MAIN_FUNCTION = "main";
    public static final String EPILOGUE_OF_FUNCTION = "_epilogue";
    public static final String NOREORDER = "noreorder";
    public static final String NOMACRO = "nomacro";

    // syscall codes
    public static final int EXIT_CODE = 10;
    public static final int MALLOC_CODE = 9;
    public static final int READ_INT_CODE = 5;
    public static final int READ_CHAR_CODE = 12;
    public static final int PRINT_INT_CODE = 1;
    public static final int PRINT_CHAR_CODE = 11;
    public static final int PRINT_STRING_CODE = 4;


    public static int computeAlignmentOffset(int size, int alignment) {
        int offsetToCorrectAlignment = size % alignment;
        offsetToCorrectAlignment = (offsetToCorrectAlignment == 0) ? 0 : alignment - offsetToCorrectAlignment;
        return offsetToCorrectAlignment;
    }

    public static int charToUnicode(char c) {
        return (int) c;
    }

    public static boolean isGlobalVar(VarDecl vd) {
        return vd.fpOffset == null;
    }

    public static String strToAsciiz(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append('\"');
        for (char c : str.toCharArray()) {
            if (c == '\u0007') {
                sb.append("\\a");
            } else if (c == '\b') {
                sb.append("\\b");
            } else if (c == '\n') {
                sb.append("\\n");
            } else if (c == '\r') {
                sb.append("\\r");
            } else if (c == '\t') {
                sb.append("\\t");
            } else if (c == '\\') {
                sb.append("\\\\");
            } else if (c == '\'') {
                sb.append("\\'");
            } else if (c == '\"') {
                sb.append("\\\"");
            } else if (c == '\0') {
                sb.append("\\0");
            } else {
                sb.append(c);
            }
        }
        sb.append('\"');
        return sb.toString();
    }

    public static Register addrToValue(TextSection currentSection, Register addr, Type type) {
        switch (type) {
            case BaseType bt -> {
                OpCode.Load op = null;
                Register value = Register.Virtual.create();
                switch (bt) {
                    case BaseType.INT -> op = OpCode.LW;
                    case BaseType.CHAR -> op = OpCode.LB;
                    default -> throw new RuntimeException("Unknown base type: " + bt);
                }
                currentSection.emit(op, value, addr, 0);
                return value;
            }
            case PointerType pt -> {
                Register value = Register.Virtual.create();
                currentSection.emit(OpCode.LW, value, addr, 0);
                return value;
            }
            case ArrayType at -> {
                // just return the address of the array
                return addr;
            }
            case StructType st -> {
                // just return the address of the struct
                return addr;
            }
            default -> throw new RuntimeException("not a leftvalue type: " + type);
        }
    }

    public static Register copyToAddr(TextSection currentSection, Register addr, Register value, Type type) {
        switch (type) {
            case BaseType bt -> {
                OpCode.Store op = null;
                switch (bt) {
                    case BaseType.INT -> op = OpCode.SW;
                    case BaseType.CHAR -> op = OpCode.SB;
                    default -> throw new RuntimeException("Unknown base type: " + bt);
                }
                currentSection.emit(op, value, addr, 0);
            }
            case PointerType pt -> {
                currentSection.emit(OpCode.SW, value, addr, 0);
            }
            case StructType st -> {
                // in this case left and right side are pointers
                // copy the struct
                int size = st.getSize();
                Register tmpReg = Register.Virtual.create();
                int i;
                for (i = 0; i < size; i += 4) {
                    currentSection.emit(OpCode.LW, tmpReg, value, i);
                    currentSection.emit(OpCode.SW, tmpReg, addr, i);
                }
                for (; i < size; ++i) {
                    currentSection.emit(OpCode.LB, tmpReg, value, i);
                    currentSection.emit(OpCode.SB, tmpReg, addr, i);
                }
            }
            case ArrayType at -> {
                // in this case left and right side are pointers
                // copy the array
                int size = at.getSize();
                Register tmpReg = Register.Virtual.create();
                int i;
                for (i = 0; i < size; i += 4) {
                    currentSection.emit(OpCode.LW, tmpReg, value, i);
                    currentSection.emit(OpCode.SW, tmpReg, addr, i);
                }
                for (; i < size; ++i) {
                    currentSection.emit(OpCode.LB, tmpReg, value, i);
                    currentSection.emit(OpCode.SB, tmpReg, addr, i);
                }
            }
            default -> throw new RuntimeException("Unexpected Value" + type);
        }
        return value;
    }

    public static boolean hasCall(FunDef fd) {
        return containsFunCallStmt(fd.block);
    }

    private static boolean containsFunCallStmt(Stmt s) {
        return switch (s) {
            case ExprStmt es -> containsFunCallExpr(es.expr);
            case While w -> containsFunCallExpr(w.expr) || containsFunCallStmt(w.stmt);
            case If i -> containsFunCallExpr(i.expr) || containsFunCallStmt(i.stmt1) || containsFunCallStmt(i.stmt2);
            case Return r -> containsFunCallExpr(r.expr);
            case Block b -> b.stmts.stream().anyMatch(Utils::containsFunCallStmt);
            case null, default -> false; // null, Break, Continue
        };
    }
    private static boolean containsFunCallExpr(Expr e) {
        return switch (e) {
            case FunCallExpr fce -> true;
            case null -> false; // for empty return
            default -> e.children().stream().filter(e_ -> e_ instanceof Expr).anyMatch(e_ -> containsFunCallExpr((Expr) e_));
        };
    }

    public static boolean isLValue(ASTNode node) {
        switch (node) {
            case VarExpr v -> {
                return true;
            }
            case ArrayAccessExpr a -> {
                return isLValue(a.arrayExpr);
            }
            case FieldAccessExpr f -> {
                return isLValue(f.structExpr);
            }
            case ValueAtExpr v -> {
                return isLValue(v.expr);
            }
            default -> {
                return false;
            }
        }
    }

    public static List<VarDecl> funDefToLocalVars(FunDef fd) {
        List<Block> blocks = new ArrayList<>();
        List<VarDecl> localVars = new ArrayList<>();

        blocks.add(fd.block);
        while (!blocks.isEmpty()) {
            Block b = blocks.remove(0);
            blocks.addAll(b.stmts.stream().filter(s -> s instanceof Block).map(s -> (Block) s).toList());
            localVars.addAll(b.vds);
        }
        return localVars;
    }
}
