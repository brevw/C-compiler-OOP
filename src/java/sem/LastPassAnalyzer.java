package sem;

import ast.*;

public class LastPassAnalyzer extends BaseSemanticAnalyzer {

    /* In the last pass of the compiler we will make sure continue and break statements are only used in loops
     * Make sure only lvalue appear on the left side of an assignment and as an argument of an address-of operator
     *
     * lvalue -> varExpr, arrayAccess, fieldAccess, valueAt
     */

    private While lastLoop = null; // Only support whiles for now


    public Type visit(ASTNode node){
        switch (node) {
            case null -> {
                throw new IllegalStateException("Unexpected null value");
            }

            case While w -> {
                var oldLoop = lastLoop;
                lastLoop = w;

                for (var c: w.children()) {
                    visit(c);
                }

                lastLoop = oldLoop;
            }

            case Continue c -> {
                if (lastLoop == null) {
                    error("Continue statement outside of loop");
                }
            }

            case Break b -> {
                if (lastLoop == null) {
                    error("Break statement outside of loop");
                }
            }

            case AddressOfExpr a -> {
                if (!isLValue(a.expr)) {
                    error("Address-of operator must be applied to an lvalue");
                }

                for (var c: a.children()) {
                    visit(c);
                }
            }

            case Assign a -> {
                if (!isLValue(a.lhs)) {
                    error("Left side of assignment must be an lvalue");
                }

                for (var c: a.children()) {
                    visit(c);
                }
            }

            default -> {
                for (var c: node.children()) {
                    visit(c);
                }
            }
        }
        return null;
    }


    private static boolean isLValue(ASTNode node) {
        switch (node) {
            case VarExpr v -> {
                return true;
            }
            case ArrayAccessExpr a -> {
                return isLValue(a.arrayExpr);
            }
            case FieldAccessExpr f -> {
                return isLValue(f.structExpr);
            }
            case ValueAtExpr v -> {
                return isLValue(v.expr);
            }


            default -> {
                return false;
            }
        }
    }
}
