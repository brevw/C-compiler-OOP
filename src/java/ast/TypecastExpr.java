package ast;

import java.util.List;

public final class TypecastExpr extends Expr{

    public final Type type;
    public final Expr expr;

    public TypecastExpr(Type type, Expr expr){
        this.type = type;
        this.expr = expr;
    }

    public List<ASTNode> children(){
        return List.of(type, expr);
    }
}
