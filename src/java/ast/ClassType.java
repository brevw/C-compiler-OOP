package ast;
import java.util.List;

public final class ClassType implements Type{

    public final String name;
    public ClassType(String name) {
        this.name = name;
    }

    public int getSize() {
        throw new UnsupportedOperationException("unimplemented");
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj instanceof ClassType other) return this.name.equals(other.name);
        return false;
    }

    @Override
    public List<ASTNode> children() {
        return List.of();
    }


}
