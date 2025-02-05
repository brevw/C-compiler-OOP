package ast;

import java.util.List;

public sealed interface  ASTNode
        permits Decl, Expr, Program, Stmt, Type, IntLiteral, StrLiteral, ChrLiteral, Op, BinOp {

    /**
     * Returns all the children of this ASTNode.
     * */
    abstract List<ASTNode> children();
}
