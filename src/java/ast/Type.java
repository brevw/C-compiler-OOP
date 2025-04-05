package ast;

public sealed interface Type extends ASTNode
        permits BaseType, PointerType, StructType, ArrayType, ClassType {

    // Returns the size of the type in bytes
    public int getSize();
}
