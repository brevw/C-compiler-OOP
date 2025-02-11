package ast;

import java.util.List;

public final class TypecastExpr extends Expr{

    public final Type toType;
    public final Expr expr;

    public TypecastExpr(Type toType, Expr expr){
        this.toType = toType;
        this.expr = expr;
    }

    public List<ASTNode> children(){
        return List.of(toType, expr);
    }
}
