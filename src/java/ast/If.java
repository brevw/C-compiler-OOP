package ast;

import java.util.List;

public final class If extends Stmt{

    public final Expr expr;
    public final Stmt stmt1;
    public final Stmt stmt2;

    public If(Expr expr, Stmt stmt1, Stmt stmt2){
        this.expr = expr;
        this.stmt1 = stmt1;
        this.stmt2 = stmt2;
    }

    public List<ASTNode> children(){
        return List.of(expr, stmt1, stmt2);
    }
}
