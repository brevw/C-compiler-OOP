package ast;

import java.util.List;

public final class InstanceFunCallExpr extends Expr{

    public final Expr classInstance;
    public final FunCallExpr funCall;
    public FunDef funDef; // to be filled by the type analyzer (The function definition that this call refers to)
    public InstanceFunCallExpr(Expr classInstance, FunCallExpr funCall) {
        this.classInstance = classInstance;
        this.funCall = funCall;
    }

    @Override
    public List<ASTNode> children() {
        return List.of(classInstance, funCall);
    }

}
