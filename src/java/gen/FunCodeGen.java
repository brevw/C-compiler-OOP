package gen;


import ast.FunDef;
import gen.asm.AssemblyProgram;
import gen.asm.Directive;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.AssemblyProgram.TextSection;
import gen.asm.Register.Arch;
import util.Utils;

/**
 * A visitor that produces code for a single function declaration
 */
public class FunCodeGen extends CodeGen {

    public FunCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    void visit(FunDef fd) {
        // Each function should be produced in its own section.
        // This is necessary for the register allocator.
        TextSection funSection = asmProg.emitNewTextSection();

        // create a label for the function
        boolean isClassMethod = fd.label != null;
        if (fd.label == null) {
            fd.label = Label.get(fd.name);
        }

        // 1) emit the prolog
        // set function name
        if (fd.label.name.equals(Utils.MAIN_FUNCTION)) {
            funSection.emit(new Directive(Utils.GLOBAL_DIRECTIVE + fd.label.name));
        }
        funSection.emit(fd.label);

        int localVarSize = fd.localVarSize;
        // handle case of main function
        if (fd.label.name.equals(Utils.MAIN_FUNCTION)) {
            // allocate space for local variables
            funSection.emit(OpCode.ADDIU, Arch.fp, Arch.sp, 0);
            funSection.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -localVarSize);
            (new StmtCodeGen(asmProg)).visit(fd.block);
            Label epilog = Label.get(fd.label.name + Utils.EPILOGUE_OF_FUNCTION); // early exit of the main function
            funSection.emit(epilog);
            funSection.emit(OpCode.LI, Arch.v0, Utils.EXIT_CODE);
            funSection.emit(OpCode.SYSCALL);
            return;
        }

        // save the frame pointer and init it
        funSection.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -4);
        funSection.emit(OpCode.SW, Arch.fp, Arch.sp, 0);
        funSection.emit(OpCode.ADDI, Arch.fp, Arch.sp, 0);

        // save the return address (if there is a call inside the function)
        boolean hasCall = Utils.hasCall(fd);
        if (hasCall) {
            funSection.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -4);
            funSection.emit(OpCode.SW, Arch.ra, Arch.sp, 0);
        }

        // allocate space for local variables
        funSection.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -localVarSize);

        // push saved registers
        funSection.emit(OpCode.PUSH_REGISTERS);

        // 2) emit the body of the function
        StmtCodeGen scd = new StmtCodeGen(asmProg);

        // define body of function (if build in function, emit syscall else visit block)
        if (isClassMethod) {
                scd.visit(fd.block);
        } else {
            switch (fd.name) {
                case "print_s" -> {
                    funSection.emit(OpCode.LW, Arch.a0, Arch.fp, Utils.WORD_SIZE);
                    funSection.emit(OpCode.LI, Arch.v0, Utils.PRINT_STRING_CODE);
                    funSection.emit(OpCode.SYSCALL);
                }
                case "print_i" -> {
                    funSection.emit(OpCode.LW, Arch.a0, Arch.fp, Utils.WORD_SIZE);
                    funSection.emit(OpCode.LI, Arch.v0, Utils.PRINT_INT_CODE);
                    funSection.emit(OpCode.SYSCALL);
                }
                case "print_c" -> {
                    funSection.emit(OpCode.LW, Arch.a0, Arch.fp, Utils.WORD_SIZE);
                    funSection.emit(OpCode.LI, Arch.v0, Utils.PRINT_CHAR_CODE);
                    funSection.emit(OpCode.SYSCALL);
                }
                case "read_c" -> {
                    funSection.emit(OpCode.LI, Arch.v0, Utils.READ_CHAR_CODE);
                    funSection.emit(OpCode.SYSCALL);
                    funSection.emit(OpCode.SW, Arch.v0, Arch.fp, Utils.WORD_SIZE);
                }
                case "read_i" -> {
                    funSection.emit(OpCode.LI, Arch.v0, Utils.READ_INT_CODE);
                    funSection.emit(OpCode.SYSCALL);
                    funSection.emit(OpCode.SW, Arch.v0, Arch.fp, Utils.WORD_SIZE);
                }
                case "mcmalloc" -> {
                    funSection.emit(OpCode.LW, Arch.a0, Arch.fp, 2 * Utils.WORD_SIZE);
                    funSection.emit(OpCode.LI, Arch.v0, Utils.MALLOC_CODE);
                    funSection.emit(OpCode.SYSCALL);
                    funSection.emit(OpCode.SW, Arch.v0, Arch.fp, Utils.WORD_SIZE);
                }
                default -> {
                    scd.visit(fd.block);
                }
            }
        }

        // 3) emit the epilog (in case of no return statement)
        Label epilog = Label.get(fd.label.name + Utils.EPILOGUE_OF_FUNCTION);
        funSection.emit(epilog);
        // restore saved registers
        funSection.emit(OpCode.POP_REGISTERS);

        // restore return address (if there is a call inside the function)
        if (hasCall) {
            funSection.emit(OpCode.LW, Arch.ra, Arch.fp, -4);
        }

        // restore the stack pointer
        funSection.emit(OpCode.ADDIU, Arch.sp, Arch.fp, 4);

        // restore the frame pointer
        funSection.emit(OpCode.LW, Arch.fp, Arch.fp, 0);

        // return
        funSection.emit(OpCode.JR, Arch.ra);


    }



}
