package ast;

import java.util.ArrayList;
import java.util.List;

public final class StructTypeDecl extends Decl {

    public final List<VarDecl> varDecls;

    public StructTypeDecl(String name, List<VarDecl> varDecls){

        this.varDecls = varDecls;
        this.type = new StructType(name);
        this.name = name;
    }


    public List<ASTNode> children() {
        var children = new ArrayList<ASTNode>();
        children.add(type);
        children.addAll(varDecls);
        return  children;
    }

}
