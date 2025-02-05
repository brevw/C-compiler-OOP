package ast;

public sealed abstract class Stmt implements ASTNode
        permits ExprStmt, While, If, Return, Continue, Break, Block {
}
