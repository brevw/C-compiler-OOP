package gen;

import ast.ASTNode;
import ast.ClassDecl;
import ast.VarDecl;

public class TweakClassFuns {

    public static void tweakClassFuns(ASTNode n) {

        switch (n) {
            case ClassDecl cd -> {
                // add the "this" parameter to all class methods to have correct parameter offsets
                cd.funDefs.forEach(f -> {
                    var newParam = new VarDecl(cd.type, "this");
                    newParam.isFunArg = true;
                    newParam.isClassPointer = true;
                    f.params.add(0, newParam);
                });
            }
            default -> n.children().forEach(TweakClassFuns::tweakClassFuns);
        }
    }
}
