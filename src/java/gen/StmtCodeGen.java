package gen;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.Register.Arch;
import util.Utils;

public class StmtCodeGen extends CodeGen {

    public StmtCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }
    // save the label of the current loop
    private Label next = null;
    private Label postTest = null;

    void visit(Stmt s) {
        ExprValCodeGen evcd = new ExprValCodeGen(asmProg);
        switch (s) {
            case Block b -> {
                // no need to do anything with varDecl (memory allocator takes care of them)
                b.stmts.forEach((innerStmt) -> {
                    visit(innerStmt);
                });
            }
            case ExprStmt es -> {
                evcd.visit(es.expr);
            }
            case While w -> {
                Label next = Label.create(Utils.NEXT_SUFFIX);
                Label postTest = Label.create(Utils.POSTTEST_SUFFIX);
                Label body = Label.create(Utils.BODY_SUFFIX);

                // save the current loop labels
                Label oldNext = this.next;
                Label oldPostTest = this.postTest;
                this.next = next;
                this.postTest = postTest;

                // Pre-test
                Register pretest = evcd.visit(w.expr);
                asmProg.getCurrentTextSection().emit(OpCode.BEQZ, pretest, next);

                // Body
                asmProg.getCurrentTextSection().emit(body);
                visit(w.stmt);

                // Post-test
                asmProg.getCurrentTextSection().emit(postTest);
                Register test = evcd.visit(w.expr);
                asmProg.getCurrentTextSection().emit(OpCode.BNEZ, test, body);

                // Next
                asmProg.getCurrentTextSection().emit(next);

                // restore the previous loop labels
                this.next = oldNext;
                this.postTest = oldPostTest;
            }
            case If i -> {
                Label elseLabel = Label.create(Utils.ELSE_SUFFIX);
                boolean hasElse = i.stmt2 != null;
                Label endLabel = hasElse ? Label.create(Utils.END_SUFFIX) : null;
                Register test = evcd.visit(i.expr);
                if (hasElse) {
                    asmProg.getCurrentTextSection().emit(OpCode.BEQZ, test, elseLabel);
                } else {
                    asmProg.getCurrentTextSection().emit(OpCode.BEQZ, test, endLabel);
                }
                visit(i.stmt1);
                asmProg.getCurrentTextSection().emit(OpCode.J, endLabel);
                if (hasElse) {
                    asmProg.getCurrentTextSection().emit(elseLabel);
                    visit(i.stmt2);
                }
                asmProg.getCurrentTextSection().emit(endLabel);
            }
            case Return r -> {
                if (r.expr != null) {
                    Register ret = evcd.visit(r.expr);
                    // copy the return value on the stack
                    Register retAddr = Register.Virtual.create();
                    asmProg.getCurrentTextSection().emit(OpCode.ADDI, retAddr, Arch.fp, 4);
                    Utils.copyToAddr(asmProg.getCurrentTextSection(), ret, retAddr, r.expr.type);
                }
                asmProg.getCurrentTextSection().emit(OpCode.JR, Arch.ra);
            }
            case Continue c -> {
                asmProg.getCurrentTextSection().emit(OpCode.J, postTest);
            }
            case Break b -> {
                asmProg.getCurrentTextSection().emit(OpCode.J, next);
            }
            default -> {} // to delete
        }
    }
}
