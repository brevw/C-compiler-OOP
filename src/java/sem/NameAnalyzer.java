package sem;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;

import ast.*;

public class NameAnalyzer extends BaseSemanticAnalyzer {
    private static final String UNKNOWN = "Unknown symbol type";
    private final HashSet<String> undefinedFunctions = new HashSet<>();

    private Scope scope;

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
                // check types
                visit(fd.type);
                for (var p: fd.params) {
                    visit(p.type);
                }

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
                                if (!decl.type.equals(fd.type)) {
                                    error("Function " + name + " has a different return type in the declaration and definition");
                                } else if (decl.params.size() != fd.params.size()) {
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
                Scope oldScope = scope;
                scope = new Scope(oldScope);
                var children = new ArrayList<ASTNode>();
                children.addAll(fd.params);
                children.addAll(fd.block.children());
                for (var c: children) {
                    visit(c);
                }
                scope = oldScope;
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
                        case  VarSymbol vs -> error("Variable " + vs.name + " is already declared in the current scope");
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
                if (std.varDecls.stream().map(vd -> vd.name).distinct().count() != std.varDecls.size()) {
                    error("Struct " + std.name + ", duplicate variable names in the declaration");
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
                            for (var a: fc.argsList) {
                                visit(a);
                            }
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
