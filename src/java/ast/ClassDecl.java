package ast;

import java.util.ArrayList;
import java.util.List;

public final class ClassDecl extends Decl{

    public final ClassType superClass; // null if no superclass
    public final List<VarDecl> varDecls;
    public final List<FunDef> funDefs;
    public ClassDecl(String name, String superClassName, List<VarDecl> varDecls, List<FunDef> funDefs) {
        this.superClass = superClassName == null ? null : new ClassType(superClassName);
        this.varDecls = varDecls;
        this.funDefs = funDefs;
        this.name = name;
        this.type = new ClassType(name);
    }

    @Override
    public List<ASTNode> children() {
        ArrayList<ASTNode> children = new ArrayList<>();
        if (superClass != null) {
            children.add(superClass);
        }
        children.addAll(varDecls);
        children.addAll(funDefs);
        return children;
    }

}
