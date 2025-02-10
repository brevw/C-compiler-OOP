package sem;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;

import ast.*;

public class NameAnalyzer extends BaseSemanticAnalyzer {
    private static final String UNKNOWN = "Unknown symbol type";
    private final HashSet<String> structNameSpace = new HashSet<>();
    private final HashSet<String> undefinedFunctions = new HashSet<>();

    private Scope scope;

    // TODO: check if every decl has a def: to implement in block and program
	public void visit(ASTNode node) {
		switch(node) {
			case null -> {
				throw new IllegalStateException("Unexpected null value");
			}

			case Block b -> {
                Scope oldScope = scope;
                scope = new Scope(oldScope);
                for (var c: b.children()) {
                    visit(c);
                }
                scope = oldScope;
			}

			case FunDecl fd -> {
                String name = fd.name;
                Optional<Symbol> sym = scope.lookup(name);
                if (sym.isPresent()) {
                    switch (sym.get()) {
                        case VarSymbol vs -> error(vs.name + " was previously declared as a variable");
                        case FunSymbol fs -> error("Function " + fs.name + " has already been declared");
                        default -> error(UNKNOWN);
                    }
                } else {
                    scope.put(new FunSymbol(name, fd));
                    undefinedFunctions.add(name);
                }

			}

			case FunDef fd -> {
                String name = fd.name;
                Optional<Symbol> sym = scope.lookup(name);
                if (sym.isPresent()) {
                    switch (sym.get()) {
                        case VarSymbol vs -> error(vs.name + " was previously declared as a variable");
                        case FunSymbol fs -> {
                            if (!undefinedFunctions.contains(name)) {
                                error("Function " + name + " was previously defined");
                            } else {
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
                                undefinedFunctions.remove(name);
                            }
                        }
                        default -> error(UNKNOWN);
                    }

                } else {
                    FunDecl decl = new FunDecl(fd.type, fd.name, fd.params);
                    scope.put(new FunSymbol(name, decl));
                }

                // go inside the function, also params are inside the block scope
                visit(fd.type);
                Scope oldScope = scope;
                scope = new Scope(oldScope);
                var children = new ArrayList<ASTNode>();
                children.addAll(fd.params);
                children.addAll(fd.block.children());
                for (var c: fd.children()) {
                    visit(c);
                }
			}

			case Program p -> {
                scope = new Scope();

                // add dummy decl for the built-in functions
                scope.put(new FunSymbol("print_s", new FunDecl(BaseType.VOID, "print_s", List.of(new VarDecl(new PointerType(BaseType.CHAR), "s")))));
                scope.put(new FunSymbol("print_i", new FunDecl(BaseType.VOID, "print_i", List.of(new VarDecl(BaseType.INT, "i")))));
                scope.put(new FunSymbol("print_c", new FunDecl(BaseType.VOID, "print_c", List.of(new VarDecl(BaseType.CHAR, "c")))));
                scope.put(new FunSymbol("read_c", new FunDecl(BaseType.CHAR, "read_c", List.of())));
                scope.put(new FunSymbol("read_i", new FunDecl(BaseType.INT, "read_i", List.of())));
                scope.put(new FunSymbol("mcmalloc", new FunDecl(new PointerType(BaseType.VOID), "mcmalloc", List.of(new VarDecl(BaseType.INT, "size")))));

                for (var decl: p.decls) {
                    visit(decl);
                }

                if (!undefinedFunctions.isEmpty()) {
                    error("Undefined functions: " + String.join(", ", undefinedFunctions));

                }
			}

			case VarDecl vd -> {
                String name = vd.name;
                Optional<Symbol> sym = scope.lookupCurrent(name);
                if (sym.isPresent()) {
                    switch (sym.get()) {
                        case  VarSymbol vs -> error("Variable " + vs.name + " is already declard in the current scope");
                        case FunSymbol fs -> error(fs.name + " was previously declared as a function");
                        default -> error(UNKNOWN);
                    }
                } else {
                    scope.put(new VarSymbol(name, vd));
                }
			}

			case VarExpr v -> {
                Optional<Symbol> sym  = scope.lookup(v.name);
                if (sym.isPresent()) {
                    switch (sym.get()) {
                        case VarSymbol vs -> {
                            v.vd = vs.vd;
                        }
                        case FunSymbol fs -> error(fs.name + " was previously declared as a function and not a variable");
                        default -> error(UNKNOWN);
                    }
                } else {
                    error("Variable " + v.name + " was not declared");
                }
			}

			case StructTypeDecl std -> {
                String name = std.name;
                if (structNameSpace.contains(name)) {
                    error("Struct " + std.name + ", duplicate declaration of a struct");
                } else {
                    if (std.varDecls.stream().map(vd -> vd.name).distinct().count() != std.varDecls.size()) {
                        error("Struct " + std.name + ", duplicate variable names in the declaration");
                    }
                    // check if the struct type is already declared
                    for (var t: std.varDecls.stream().map(vd -> vd.type).toList()) {
                        visit(t);
                    }
                    structNameSpace.add(name);
                }
			}


			case Type t -> {
                switch (t) {
                    case StructType st -> {
                        if (!structNameSpace.contains(st.name)) {
                            error("Struct " + st.name + " was not declared");
                        }
                    }
                    case ArrayType at -> {
                        for (var n: at.children()) {
                            visit(n);
                        }
                    }
                    case BaseType bt -> {
                        for (var n: bt.children()) {
                            visit(n);
                        }
                    }
                    case PointerType pt -> {
                        for (var n: pt.children()) {
                            visit(n);
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
                        case VarSymbol vs -> error(vs.name + " was previously declared as a variable");
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
                for (var n: node.children()) {
                    visit(n);
                }
            }

        };

	}

}
