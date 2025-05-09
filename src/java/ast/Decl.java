package ast;

public abstract sealed class Decl implements ASTNode
        permits FunDecl, FunDef, StructTypeDecl, VarDecl, ClassDecl {

    public Type type;
    public String name;
}
