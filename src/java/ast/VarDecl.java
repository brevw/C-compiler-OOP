package ast;

import java.util.List;

public final class VarDecl extends Decl {
    public Integer fpOffset = null; // to be filled in the MemAllocCodeGen pass (is null if global variable)

    public VarDecl(Type type, String name) {
	    this.type = type;
	    this.name = name;
    }

    public List<ASTNode> children() {
        return List.of(type);
    }

}
