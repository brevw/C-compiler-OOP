package sem;

import util.CompilerPass;

import java.util.HashSet;
import java.util.Set;

import ast.ASTNode;
import ast.AddressOfExpr;
import ast.ArrayType;
import ast.FunDecl;
import ast.FunDef;
import ast.StructType;
import ast.StructTypeDecl;
import ast.VarDecl;
import ast.VarExpr;
import gen.asm.Register;

public class PromoteVarToReg extends CompilerPass{

    private boolean global = true;
    private boolean isFunctionParam = false;
    private boolean insideAddressOf = false;

    public void visit(ASTNode n) {
        Set<VarDecl> localVars = new HashSet<>();
        helperVisit(n, localVars);
        localVars.forEach(vd -> {
            if (vd.upgradeToReg) {
                vd.reg = Register.Virtual.create();
            }
        });
    }

    private void helperVisit(ASTNode n, Set<VarDecl> localVars) {
        switch (n) {
            case VarDecl vd -> {
                // add to the pool of local variables
                localVars.add(vd);
                if (global || isFunctionParam) {
                    // use memory
                    vd.upgradeToReg = false;
                } else {
                    if (vd.type instanceof StructType || vd.type instanceof ArrayType) {
                        vd.upgradeToReg = false; // do not promote to register
                    } else {
                        vd.upgradeToReg = true; // by default promote to register then if needed we will downgrade
                    }
                }
            }

            case VarExpr ve -> {
                if (isFunctionParam || insideAddressOf) {
                    ve.vd.upgradeToReg = false;
                }
            }

            case FunDef fd -> {
                isFunctionParam = true;
                fd.params.forEach(this::visit);
                isFunctionParam = false;

                this.global = false;
                visit(fd.block);
                this.global = true;
            }

            case AddressOfExpr a -> {
                // all variables that need to have an address have to be in memory
                var oldInsideAddressOf = insideAddressOf;
                insideAddressOf = true;
                visit(a.expr);
                insideAddressOf = oldInsideAddressOf;
            }

            default -> {
                if (!(n instanceof StructTypeDecl || n instanceof FunDecl)) {
                    n.children().forEach(this::visit);
                }
            }
        }
    }
}
