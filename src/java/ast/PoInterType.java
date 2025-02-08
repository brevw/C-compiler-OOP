package ast;

import java.util.List;

public final class PointerType implements Type{

    public final Type type;

    public PointerType(Type type){
        this.type = type;
    }

    public List<ASTNode> children(){
        return List.of(type);
    }

}
