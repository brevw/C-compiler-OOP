package ast;

import java.util.ArrayList;
import java.util.List;

public final class FunCallExpr extends Expr{
    public final String name;
    public final List<Expr> argsList;
    public FunDecl fd; // to be filled in by the name analyser

    public FunCallExpr(String name, List<Expr> argsList){
        this.name = name;
        this.argsList = argsList;
    }

    public List<ASTNode> children(){
        return new ArrayList<>(argsList);
    }

}
