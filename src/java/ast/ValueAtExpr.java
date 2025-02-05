package ast;

import java.util.List;

public final class ValueAtExpr extends Expr{

    public final Expr expr;

    public ValueAtExpr(Expr expr){
        this.expr = expr;
    }

    public List<ASTNode> children(){
        return List.of(expr);
    }
}
