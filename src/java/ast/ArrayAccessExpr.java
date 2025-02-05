package ast;

import java.util.List;

public final class ArrayAccessExpr extends Expr{

    public final Expr arrayExpr;
    public final Expr indexExpr;

    public ArrayAccessExpr(Expr arrayExpr, Expr indexExpr){
        this.arrayExpr = arrayExpr;
        this.indexExpr = indexExpr;
    }

    public List<ASTNode> children(){
        return List.of(arrayExpr, indexExpr);
    }
}
