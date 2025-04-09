package ast;

import java.util.List;

public final class InstanceFunCallExpr extends Expr{

    public final Expr classInstance;
    public final FunCallExpr funCall;
    public InstanceFunCallExpr(Expr classInstance, FunCallExpr funCall) {
        this.classInstance = classInstance;
        this.funCall = funCall;
    }

    @Override
    public List<ASTNode> children() {
        return List.of(classInstance, funCall);
    }

}
