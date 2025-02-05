package ast;

import java.util.List;

public final class SizeOfExpr extends Expr{

    public final Type type;

    public SizeOfExpr(Type type){
        this.type = type;
    }

    public List<ASTNode> children(){
        return List.of(type);
    }
}
