package ast;

import java.util.List;

public enum BaseType implements Type {
    INT, CHAR, VOID, UNKNOWN, NONE;

    private static final int INT_SIZE = 4;
    private static final int CHAR_SIZE = 1;
    private static final int VOID_SIZE = 0;
    public List<ASTNode> children() {
        return List.of();
    }

    @Override
    public int getSize() {
        switch (this) {
            case INT -> {
                return INT_SIZE;
            }
            case CHAR -> {
                return CHAR_SIZE;
            }
            case VOID -> {
                return VOID_SIZE;
            }
            default -> {
                throw new RuntimeException("Unknown base type");
            }
        }
    }
}
