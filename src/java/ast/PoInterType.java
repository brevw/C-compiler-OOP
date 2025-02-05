package ast;

import java.util.List;

public final class PoInterType implements Type{

    public final Type type;

    public PoInterType(Type type){
        this.type = type;
    }

    public List<ASTNode> children(){
        return List.of(type);
    }

}
