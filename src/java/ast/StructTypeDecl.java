package ast;

import java.util.ArrayList;
import java.util.List;

public final class StructTypeDecl extends Decl {

    public final List<VarDecl> varDecls;

    public StructTypeDecl(String name, List<VarDecl> varDecls){

        this.varDecls = varDecls;
        this.type = BaseType.NONE;
        this.name = name;
    }


    public List<ASTNode> children() {
        var children = new ArrayList<ASTNode>(varDecls);
        children.add(type);
        return  children;
    }

}
