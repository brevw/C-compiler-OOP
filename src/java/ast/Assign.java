package ast;

import java.util.List;

public final class Assign extends Expr{

    public final Expr lhs;
    public final Expr rhs;

    public Assign(Expr lhs, Expr rhs){
        this.lhs = lhs;
        this.rhs = rhs;
    }

    public List<ASTNode> children(){
        return List.of(lhs, rhs);
    }
}
