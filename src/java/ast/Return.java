package ast;

import java.util.List;

public final class Return extends Stmt{

    public final Expr expr;

    public Return(Expr expr){
        this.expr = expr;
    }

    public List<ASTNode> children(){
        return List.of(expr);
    }
}
