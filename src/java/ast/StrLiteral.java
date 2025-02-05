package ast;

import java.util.List;

public final class StrLiteral implements ASTNode{
    public final String strValue;

    public StrLiteral(String strValue){
        this.strValue = strValue;
    }

    public List<ASTNode> children(){
        return List.of();
    }
}
