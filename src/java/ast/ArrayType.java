package ast;

import java.util.List;

public final class ArrayType implements Type{

    public final Type type;
    public final int nbrElements;

    public ArrayType(Type type, int nbrElements){
        this.type = type;
        this.nbrElements = nbrElements;
    }

    public List<ASTNode> children(){
        return List.of(type);
    }

}
