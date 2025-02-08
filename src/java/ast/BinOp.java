package ast;

import java.util.List;

public final class BinOp extends Expr {

    public final Expr lhs;
    public final Op op;
    public final Expr rhs;

    public BinOp(Expr lhs, Op op, Expr rhs){
        this.lhs = lhs;
        this.op = op;
        this.rhs = rhs;
    }

    public List<ASTNode> children(){
        return List.of(lhs, rhs);
    }

}
