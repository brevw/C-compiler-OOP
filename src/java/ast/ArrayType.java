package ast;

import java.util.List;

public final class ArrayType implements Type{

    public final Type type;
    public final int nbrElements;

    public ArrayType(Type type, int nbrElements){
        this.type = type;
        this.nbrElements = nbrElements;
    }

    @Override
    public boolean equals(Object obj){
        if (obj instanceof ArrayType other){
            return type.equals(other.type) && nbrElements == other.nbrElements;
        }
        return false;
    }

    public List<ASTNode> children(){
        return List.of(type);
    }

}
