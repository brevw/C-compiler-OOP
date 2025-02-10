package sem;

import ast.VarDecl;

public class VarSymbol extends Symbol {
    public VarDecl vd;
    public VarSymbol(String name, VarDecl vd) {
        super(name);
        this.vd = vd;
    }
}
