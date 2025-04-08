package gen;

import ast.ASTNode;
import ast.ClassDecl;
import ast.InstanceFunCallExpr;
import ast.VarDecl;

public class TweakClassFuns {

    public static void tweakClassFuns(ASTNode n) {

        switch (n) {
            case ClassDecl cd -> {
                cd.funDefs.forEach(f -> {
                    f.params.add(0, new VarDecl(cd.type, "this"));
                });
            }
            case InstanceFunCallExpr ifce -> {
                var fce = ifce.funCall;
                if (fce.classMethodCall) {
                    fce.fd.params.add(0, new VarDecl(ifce.type, "this"));
                }
            }
            default -> n.children().forEach(TweakClassFuns::tweakClassFuns);
        }
    }
}
