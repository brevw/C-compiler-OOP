package ast;
import java.util.List;

import util.Utils;

public final class ClassType implements Type{

    public final String name;
    public ClassDecl decl; // to be filled by the type analyzer
    public ClassType(String name) {
        this.name = name;
    }

    public int getSize() {
        return Utils.WORD_SIZE;
    }

    public int getOffset(String fieldName) {
        return decl.getOffset(fieldName);
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
