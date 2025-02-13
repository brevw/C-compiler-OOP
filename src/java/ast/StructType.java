package ast;

import java.util.List;

public final class StructType implements Type{

    public final String name;

    public StructType(String name){
        this.name = name;
    }

    @Override
    public boolean equals(Object obj){
        if (obj instanceof StructType other){
            return name.equals(other.name);
        }
        return false;
    }

    public List<ASTNode> children(){
        return List.of();
    }

}
