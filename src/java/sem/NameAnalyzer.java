package sem;

import java.util.HashSet;
import java.util.Optional;

import ast.*;

public class NameAnalyzer extends BaseSemanticAnalyzer {
    private static final String UNKNOWN = "Unknown symbol type";
    private static final HashSet<String> STRUCT_NAME_SPACE = new HashSet();

    private Scope scope;

    // DOTO check if every decl has a def: to implement in block and program
	public void visit(ASTNode node) {
		switch(node) {
			case null -> {
				throw new IllegalStateException("Unexpected null value");
			}

			case Block b -> {
                Scope oldScope = scope;
                scope = new Scope(oldScope);
                for (var vd: b.vds) {
                    visit(vd);
                }
                for(var stmt: b.stmts) {
                    visit(stmt);
                }
                scope = oldScope;
			}

			case FunDecl fd -> {
                String name = fd.name;
                Optional<Symbol> sym = scope.lookup(name);
                if (sym.isPresent()) {
                    switch (sym.get()) {
                        case VarSymbol _ -> error(name + " was previously declared as a variable");
                        case FunSymbol _ -> error("Function " + name + " is already declared in the current scope");
                        default -> error(UNKNOWN);
                    }
                } else {
                    scope.put(new FunSymbol(name, fd));
                }

			}

			case FunDef fd -> {
                String name = fd.name;
                Optional<Symbol> sym = scope.lookup(name);
                if (sym.isPresent()) {
                    switch (sym.get()) {
                        case VarSymbol _ -> error(name + " was previously declared as a variable");
                        case FunSymbol fs -> {
                            FunDecl decl = fs.fd;
                            if (decl.params.size() != fd.params.size()) {
                                error("Function " + name + " was declared with different number of parameters");
                            } else {
                                for (int i = 0; i < decl.params.size(); i++) {
                                    if (!decl.params.get(i).type.equals(fd.params.get(i).type)) {
                                        error("Function " + name + " has a different types in parameter " + (i + 1) + " in the declaration and definition");
                                    }
                                }
                            }
                        }
                        default -> error(UNKNOWN);
                    }

                } else {
                    FunDecl decl = new FunDecl(fd.type, fd.name, fd.params);
                    scope.put(new FunSymbol(name, decl));
                }
			}

			case Program p -> {
                scope = new Scope();
                for (var decl: p.decls) {
                    visit(decl);
                }
			}

			case VarDecl vd -> {
                String name = vd.name;
                if (scope.lookupCurrent(name).isPresent()) {
                    error("Variable " + name + " is already declared in the current scope");
                } else {
                    Symbol sym = new VarSymbol(name, vd);
                    scope.put(sym);
                }
			}

			case VarExpr v -> {
                Optional<Symbol> sym  = scope.lookup(v.name);
                if (sym.isPresent()) {
                    switch (sym.get()) {
                        case VarSymbol vs -> {
                            v.vd = vs.vd;
                        }
                        case FunSymbol _ -> error(v.name + " was previously declared as a function");
                        default -> error(UNKNOWN);
                    }
                } else {
                    error("Variable " + v.name + " used before declaration");
                }
			}

			case StructTypeDecl std -> {
                String name = std.name;
                if (STRUCT_NAME_SPACE.contains(name)) {
                    error("Struct " + std.name + ", duplicate declaration of a struct");
                } else {
                    if (std.varDecls.stream().map(vd -> vd.name).distinct().count() != std.varDecls.size()) {
                        error("Struct " + std.name + ", duplicate variable names in the declaration");
                    }
                    STRUCT_NAME_SPACE.add(name);
                }
			}


			case Type t -> {
                switch (t) {
                    case ArrayType _, BaseType _, PointerType _ -> {
                        for (var n: t.children()) {
                            visit(n);
                        }
                    }
                    case StructType st -> {
                        if (!STRUCT_NAME_SPACE.contains(st.name)) {
                            error("Struct " + st.name + " was not declared");
                        }
                    }
                    default -> error(UNKNOWN);
                }
            }

            case FunCallExpr fc -> {
                String name = fc.name;
                Optional<Symbol> sym = scope.lookup(name);
                if (sym.isPresent()) {
                    switch (sym.get()) {
                        case VarSymbol _ -> error(name + " was previously declared as a variable");
                        case FunSymbol fs -> {
                            fc.fd = fs.fd;
                        }
                        default -> error(UNKNOWN);
                    }
                } else {
                    error("Function " + name + " is not declared or defined in the current scope");
                }
            }
            default -> {
                visit(node);
            }

        };

	}

}
