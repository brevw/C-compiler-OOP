package ast;

import java.util.List;

public final class SizeOfExpr extends Expr{

    public final Type ofType;

    public SizeOfExpr(Type ofType){
        this.ofType = ofType;
    }

    public List<ASTNode> children(){
        return List.of(ofType);
    }
}
