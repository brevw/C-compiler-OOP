package ast;

import java.util.List;

public final class IntLiteral extends Expr{
    public final int intValue;

    public IntLiteral(int intValue){
        this.intValue = intValue;
    }

    public List<ASTNode> children(){
        return List.of();
    }
}
