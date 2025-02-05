package ast;

import java.util.List;

public final class AddressOfExpr extends Expr{

    public final Expr expr;

    public AddressOfExpr(Expr expr){
        this.expr = expr;
    }

    public List<ASTNode> children(){
        return List.of(expr);
    }
}
