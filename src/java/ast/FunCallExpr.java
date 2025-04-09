package ast;

import java.util.ArrayList;
import java.util.List;

public final class FunCallExpr extends Expr{
    public final String name;
    public final List<Expr> argsList;
    public FunDecl fd; // to be filled in by the name analyser (and by the type analyzer if it is a class method)

    // only needed for class methods
    public boolean classMethodCall = false; // to be filled in by the name analyser

    public boolean implicitClassMethodCall = false; // to be filled in by the name analyser
    public ClassDecl implicitClassDecl; // to be filled in by the name analyser
    public Integer outerFunReturnSize = null; // to be filled in by the type analyser

    public FunCallExpr(String name, List<Expr> argsList){
        this.name = name;
        this.argsList = argsList;
    }

    public List<ASTNode> children(){
        return new ArrayList<>(argsList);
    }

}
