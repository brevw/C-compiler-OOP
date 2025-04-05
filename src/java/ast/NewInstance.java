package ast;

import java.util.List;

public final class NewInstance extends Expr{

    public final ClassType ofClass;
    public NewInstance(ClassType ofClass) {
        this.ofClass = ofClass;
    }

    @Override
    public List<ASTNode> children() {
        return List.of();
    }

}
