package ast;

import java.util.List;

public final class ExprStmt extends Stmt {

    public final Expr expr;

    public ExprStmt(Expr expr){
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        return List.of(expr);
    }
}
