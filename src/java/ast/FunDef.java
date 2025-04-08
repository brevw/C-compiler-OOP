package ast;

import java.util.ArrayList;
import java.util.List;

import gen.asm.Label;

public final class FunDef extends Decl {
    public final List<VarDecl> params;
    public final Block block;
    public int localVarSize; // to be filled in the allocator
    public int returnSize; // to be filled in the allocator
    public Label label = null; // to be filled by the virtual table creation

    public FunDef(Type type, String name, List<VarDecl> params, Block block) {
	    this.type = type;
	    this.name = name;
	    this.params = params;
	    this.block = block;
    }

    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(type);
        children.addAll(params);
        children.add(block);
        return children;
    }

}
