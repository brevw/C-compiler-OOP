package ast;

import java.util.List;

import gen.asm.Register;

public final class VarDecl extends Decl {
    public Integer fpOffset = null; // to be filled in the MemAllocCodeGen pass (is null if global variable)
    public boolean isFunArg = false; // used to determine if the array is passed by reference (filled in by the type checker)
    public Boolean upgradeToReg = null; // used to determine if the variable should be promoted to a register
                                         // by default is null meaning use memory (filled in PromoteVarToReg pass)
    public Register reg = null;

    public VarDecl(Type type, String name) {
	    this.type = type;
	    this.name = name;
    }

    public List<ASTNode> children() {
        return List.of(type);
    }

}
