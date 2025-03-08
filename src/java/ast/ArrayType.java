package ast;

import java.util.List;
import java.util.Objects;

public final class ArrayType implements Type{
    private Integer size = null;

    public final Type type;
    public final int nbrElements;
    public boolean isFunArg = false; // used to determine if the array is passed by reference (filled in by the type checker)

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

    @Override
    public int getSize(){
        return Objects.requireNonNullElseGet(size, () -> {size = type.getSize() * nbrElements; return size;});
    }

}
