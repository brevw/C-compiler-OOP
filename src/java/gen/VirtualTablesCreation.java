package gen;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Stack;

import ast.ClassDecl;
import ast.Program;
import gen.asm.AssemblyProgram;
import gen.asm.Label;

public class VirtualTablesCreation extends CodeGen{
    private Map<String, ClassDecl> classes = new HashMap<>();

    public VirtualTablesCreation(AssemblyProgram  asmProg) {
        this.asmProg = asmProg;
    }

    void visit(Program p) {
        // create a label for each method in a class
        p.decls.stream().filter(d -> d instanceof ClassDecl).forEach(d -> {
            ClassDecl cd = (ClassDecl) d;
            classes.put(cd.name, cd);
            cd.funDefs.forEach(f -> {
                f.label = Label.create(cd.name + "_" + f.name);
            });
        });

        // create a virtual table for each class
        p.decls.stream().filter(d -> d instanceof ClassDecl)
            .forEach(d -> {
                Stack<ClassDecl> ancestors = new Stack<>();
                LinkedHashMap<String, Label> funToLabel = new LinkedHashMap<>();
                ClassDecl cd = (ClassDecl) d;
                while (cd != null) {
                    ancestors.push(cd);
                    cd = cd.superClass == null ? null : classes.get(cd.superClass.name);
                }
                while (!ancestors.isEmpty()) {
                    cd = ancestors.pop();
                    cd.funDefs.forEach(f -> {
                        funToLabel.put(f.name, f.label);
                    });
                    cd.allVarDecls.addAll(cd.varDecls);
                }

                // fill the class with appropriate attributes
                cd.virtualTableLabel = Label.create(cd.name + "_vtable");
                cd.funToLabel = funToLabel;
            });

    }



}
