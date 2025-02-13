package ast;

import java.util.List;

public final class PointerType implements Type{

    public final Type type;

    public PointerType(Type type){
        this.type = type;
    }

    @Override
    public boolean equals(Object obj){
        if (obj instanceof PointerType other){
            return type.equals(other.type);
        }
        return false;
    }

    public List<ASTNode> children(){
        return List.of(type);
    }

}
