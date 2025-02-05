package ast;

public sealed abstract class Expr implements ASTNode
        permits VarExpr, FunCallExpr, ArrayAccessExpr, FieldAccessExpr, ValueAtExpr,
                AddressOfExpr, SizeOfExpr, TypecastExpr, Assign {

    public Type type; // to be filled in by the type analyser
}
