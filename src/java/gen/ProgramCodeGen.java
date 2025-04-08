package gen;

import java.util.List;

import ast.BaseType;
import ast.Block;
import ast.ClassDecl;
import ast.FunDef;
import ast.PointerType;
import ast.Program;
import ast.VarDecl;
import gen.asm.AssemblyProgram;
import gen.asm.Directive;
import util.Utils;

/**
 * This visitor should produce a program.
 */
public class ProgramCodeGen extends CodeGen {
    public static FunDef currentFunction = null;

    public ProgramCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    public void generate(Program p) {
        // create virtual tables
        VirtualTablesCreation vtc = new VirtualTablesCreation(asmProg);
        vtc.visit(p);

        // add built-in functions
        p.decls.add(new FunDef(BaseType.VOID, "print_s", List.of(new VarDecl(new PointerType(BaseType.CHAR), "s")), new Block(List.of(), List.of())));
        p.decls.add(new FunDef(BaseType.VOID, "print_i", List.of(new VarDecl(BaseType.INT, "i")), new Block(List.of(), List.of())));
        p.decls.add(new FunDef(BaseType.VOID, "print_c", List.of(new VarDecl(BaseType.CHAR, "c")), new Block(List.of(), List.of())));
        p.decls.add(new FunDef(BaseType.CHAR, "read_c", List.of(), new Block(List.of(), List.of())));
        p.decls.add(new FunDef(BaseType.INT, "read_i", List.of(), new Block(List.of(), List.of())));
        p.decls.add(new FunDef(new PointerType(BaseType.VOID), "mcmalloc", List.of(new VarDecl(BaseType.INT, "size")), new Block(List.of(), List.of())));

        // modify instance functions by adding the class pointer as first parameter
        TweakClassFuns.tweakClassFuns(p);

        // allocate all variables
        MemAllocCodeGen allocator = new MemAllocCodeGen(asmProg);
        allocator.visit(p);


        // emit the virtual tables and the class methods
        p.decls.stream().filter(d -> d instanceof ClassDecl)
            .forEach(d -> {
                ClassDecl cd = (ClassDecl) d;

                // emit the virtual tables
                asmProg.dataSection.emit(cd.virtualTableLabel);
                for (var entry : cd.funToLabel.entrySet()) {
                    asmProg.dataSection.emit(new Directive(Utils.WORD_DIRECTIVE + entry.getValue()));
                }
                // emit the class methods
                cd.funDefs.forEach(f -> {
                    FunCodeGen.currentClass = cd;
                    (new FunCodeGen(asmProg)).visit(f);
                    FunCodeGen.currentClass = null;
                });
            });


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
