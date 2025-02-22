package ast;

import java.util.List;
import java.util.Objects;

public final class StructType implements Type{

    public final String name;
    public StructTypeDecl decl = null; // to be filled in the TypeAnalysis pass
    private Integer size = null;

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

    @Override
    public int getSize(){
        // TODO: check if this respects alignment
        // compute once and cache the result
        return Objects.requireNonNullElseGet(size, () -> {
            size = decl.varDecls.stream().mapToInt(vd -> vd.type.getSize()).sum();
            return size;
        });
    }

}
