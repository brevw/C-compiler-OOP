package sem;

import ast.FunDecl;

public class FunSymbol extends Symbol {
    public FunDecl fd;
    public boolean isClassMethod; // to be filled in by the name analyser
    public FunSymbol(String name, FunDecl fd, boolean isClassMethod) {
        super(name);
        this.fd = fd;
        this.isClassMethod = isClassMethod;
    }
    public FunSymbol(String name, FunDecl fd) {
        this(name, fd, false);
    }
}
