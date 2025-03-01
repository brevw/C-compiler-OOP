package gen;

import java.util.List;

import ast.BaseType;
import ast.Block;
import ast.FunDef;
import ast.PointerType;
import ast.Program;
import ast.VarDecl;
import gen.asm.AssemblyProgram;

/**
 * This visitor should produce a program.
 */
public class ProgramCodeGen extends CodeGen {
    public static FunDef currentFunction = null;

    public ProgramCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    void generate(Program p) {
        // add built-in functions
        p.decls.add(new FunDef(BaseType.VOID, "print_s", List.of(new VarDecl(new PointerType(BaseType.CHAR), "s")), new Block(List.of(), List.of())));
        p.decls.add(new FunDef(BaseType.VOID, "print_i", List.of(new VarDecl(BaseType.INT, "i")), new Block(List.of(), List.of())));
        p.decls.add(new FunDef(BaseType.VOID, "print_c", List.of(new VarDecl(BaseType.CHAR, "c")), new Block(List.of(), List.of())));
        p.decls.add(new FunDef(BaseType.CHAR, "read_c", List.of(), new Block(List.of(), List.of())));
        p.decls.add(new FunDef(BaseType.INT, "read_i", List.of(), new Block(List.of(), List.of())));
        p.decls.add(new FunDef(new PointerType(BaseType.VOID), "mcmalloc", List.of(new VarDecl(BaseType.INT, "size")), new Block(List.of(), List.of())));

        // allocate all variables
        MemAllocCodeGen allocator = new MemAllocCodeGen(asmProg);
        allocator.visit(p);

        // generate the code for each function
        p.decls.forEach((d) -> {
            switch(d) {
                case FunDef fd -> {
                    currentFunction = fd;
                    FunCodeGen fcg = new FunCodeGen(asmProg);
                    fcg.visit(fd);
                }
                default -> {}// nothing to do
            }});
    }





}
