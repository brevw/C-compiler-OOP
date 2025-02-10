package sem;

import ast.FunDecl;

public class FunSymbol extends Symbol {
    public FunDecl fd;
    public FunSymbol(String name, FunDecl fd) {
        super(name);
        this.fd = fd;
    }
}
