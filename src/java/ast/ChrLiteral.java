package ast;

import java.util.List;

public final class ChrLiteral extends Expr{
    public final char charValue;

    public ChrLiteral(char charValue){
        this.charValue = charValue;
    }

    public List<ASTNode> children(){
        return List.of();
    }
}
