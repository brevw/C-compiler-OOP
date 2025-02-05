package ast;

import java.util.List;

public final class FieldAccessExpr extends Expr{

    public final Expr structExpr;
    public final String  fieldName;

    public FieldAccessExpr(Expr structExpr, String fieldName){
        this.structExpr = structExpr;
        this.fieldName = fieldName;
    }

    public List<ASTNode> children(){
        return List.of(structExpr);
    }
}
