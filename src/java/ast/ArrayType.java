package ast;

import java.util.List;
import java.util.Objects;

public final class ArrayType implements Type{
    private Integer size = null;

    public final Type type;
    public final int nbrElements;
    private Integer largestAlignment = null;

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


    public int getLargestAlignment(){
        // compute once and cache the result
        return Objects.requireNonNullElseGet(largestAlignment, () -> {
            if (type instanceof StructType st){
                largestAlignment = st.getLargestAlignment();
            } else if (type instanceof ArrayType at){
                largestAlignment = at.getLargestAlignment();
            } else {
                largestAlignment = type.getSize();
            }
            return largestAlignment;
        });
    }

    @Override
    public int getSize(){
        return Objects.requireNonNullElseGet(size, () -> {size = type.getSize() * nbrElements; return size;});
    }

}
