package sem;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import ast.*;

public class NameAnalyzer extends BaseSemanticAnalyzer {
    private static final String UNKNOWN = "Unknown symbol type";
    private final HashSet<String> undefinedFunctions = new HashSet<>();
    private final HashSet<String> funDefBeforeDeclNoDecl = new HashSet<>();
    private final Map<String, ClassDecl> classes = new HashMap<>();

    private boolean isInClass = false;
    private boolean isClassVar = false;
    private ClassDecl currentClass = null;
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
                        case FunSymbol fs -> {
                            if (!funDefBeforeDeclNoDecl.contains(name)){
                                error("Function " + fs.name + " has already been declared");
                            } else {
                                // case decl after def
                                if (!fs.fd.type.equals(fd.type)) {
                                    // check same return type
                                    error("Function " + name + " has a different return type in the declaration and definition");
                                } else if (fs.fd.params.size() != fd.params.size()) {
                                    // check same number of params
                                    error("Function " + name + " was declared with different number of parameters");
                                } else {
                                    // check same types of params
                                    for (int i = 0; i < fs.fd.params.size(); i++) {
                                        if (!fs.fd.params.get(i).type.equals(fd.params.get(i).type)) {
                                            error("Function " + name + " has a different types in parameter " + (i + 1) + " in the declaration and definition");
                                        }
                                    }
                                }
                            }
                        }
                        default -> error(UNKNOWN);
                    }
                } else {
                    scope.put(new FunSymbol(name, fd));
                    undefinedFunctions.add(name);
                }

			}

			case FunDef fd -> {
                String name = fd.name;
                Optional<Symbol> sym = scope.lookupCurrent(name);
                if (sym.isPresent()) {
                    switch (sym.get()) {
                        case VarSymbol vs -> error(vs.name + " was previously declared as a variable");
                        case FunSymbol fs -> {
                            if (!undefinedFunctions.contains(name) && !isInClass) {
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
                                if (!isInClass) {
                                    undefinedFunctions.remove(name);
                                }
                            }
                        }
                        default -> error(UNKNOWN);
                    }

                } else {
                    FunDecl decl = new FunDecl(fd.type, fd.name, fd.params);
                    if (!isInClass) {
                        funDefBeforeDeclNoDecl.add(name);
                    }
                    scope.put(new FunSymbol(name, decl, isInClass));
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

                // assign the class decls to their types
                p.decls.stream().filter(d -> d instanceof ClassDecl)
                    .forEach(d -> {
                        ClassDecl cd = (ClassDecl) d;
                    ((ClassType) cd.type).decl = cd;
                        if (cd.superClass != null) {
                        ((cd.superClass)).decl = classes.get(cd.superClass.name);
                        }
                    });


                if (!undefinedFunctions.isEmpty()) {
                    error("Undefined functions: " + String.join(", ", undefinedFunctions));

                }
			}

			case VarDecl vd -> {
                String name = vd.name;
                if (isInClass) {
                    vd.classVar = isClassVar;
                }
                Optional<Symbol> sym = scope.lookupCurrent(name);
                if (sym.isPresent()) {
                    switch (sym.get()) {
                        case VarSymbol vs -> error("Variable " + vs.name + " is already declared in the current scope");
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

            case ClassDecl cd -> {
                this.currentClass = cd;
                Scope oldScope = scope;
                scope = new Scope(oldScope);
                isInClass = true;
                String name = cd.name;
                String superName = cd.superClass == null ? null : cd.superClass.name;
                if (classes.containsKey(name)) {
                    error("Class " + name + " is already declared");
                }
                if (superName != null && !classes.containsKey(superName)) {
                    error("Class " + superName + " is not declared");
                }

                List<VarDecl> superFields = new ArrayList<>();
                List<FunDef> superMethods = new ArrayList<>();
                ClassDecl temp = cd;
                while (temp.superClass != null && classes.containsKey(temp.superClass.name)) {
                    ClassDecl super_ = classes.get(temp.superClass.name);
                    superFields.addAll(super_.varDecls);
                    superMethods.addAll(super_.funDefs);
                    temp = super_;
                }

                for (var vd: cd.varDecls) {
                    if (superFields.stream().map(v -> v.name).anyMatch(vd.name::equals)) {
                        error("Class " + name + ", duplicate variable names "+ vd.name + " in the declaration");
                    }
                }
                for (var fd: cd.funDefs) {
                    for (var fd1: superMethods) {
                        if (fd.name.equals(fd1.name)) {
                            if (!fd.type.equals(fd1.type)) {
                                error("Class " + name + ", method " + fd.name + " has a different return type from the one in the superclasses");
                            } else if (fd.params.size() != fd1.params.size()) {
                                error("Class " + name + ", method " + fd.name + " was declared with different number of parameters from the one in the superclasses");
                            } else {
                                for (int i = 0; i < fd.params.size(); i++) {
                                    if (!fd.params.get(i).type.equals(fd1.params.get(i).type)) {
                                        error("Class " + name + ", method " + fd.name + " has a different types in parameter " + (i + 1) + " from the one in the superclasses");
                                    }
                                }
                            }
                        }
                    }
                }
                superFields.forEach(vd -> {
                    scope.put(new VarSymbol(vd.name, vd));
                });

                superMethods.forEach(fd -> {
                    FunDecl decl = new FunDecl(fd.type, fd.name, fd.params);
                    scope.put(new FunSymbol(fd.name, decl, true));
                    cd.allFunDecls.put(fd.name, decl);
                });

                // instance has all fields of the class and its superclasses
                cd.allVarDecls.addAll(cd.varDecls);
                cd.allVarDecls.addAll(superFields);

                // instance has all decl of methods of the class and its superclasses
                cd.funDefs.forEach(fd -> {
                    FunDecl decl = new FunDecl(fd.type, fd.name, fd.params);
                    cd.allFunDecls.put(fd.name, decl);
                });

                this.isClassVar = true;
                cd.varDecls.forEach(vd -> visit(vd));
                this.isClassVar = false;
                // scope will not detect duplicate names in the class so do it manually
                ArrayList<String> funNames = new ArrayList<>();
                cd.funDefs.forEach(fd -> {
                    if (funNames.contains(fd.name)) {
                        error("Class " + name + ", method " + fd.name + " is already declared");
                    } else {
                        funNames.add(fd.name);
                    }
                    visit(fd);
                });

                classes.put(name, cd);
                scope = oldScope;
                isInClass = false;
                currentClass = null;
            }


            case FunCallExpr fc -> {
                if (fc.classMethodCall) {
                    fc.argsList.forEach(arg -> visit(arg));
                } else {
                    String name = fc.name;
                    Optional<Symbol> sym = scope.lookup(name);
                    if (sym.isPresent()) {
                        switch (sym.get()) {
                            case VarSymbol vs -> error(vs.name + " was previously declared as a variable");
                            case FunSymbol fs -> {
                                fc.fd = fs.fd;
                                if (fs.isClassMethod) {
                                    fc.implicitClassMethodCall = true;
                                    fc.implicitClassDecl = currentClass;
                                }
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
            }

            default -> {
                node.children().forEach(this::visit);
            }

        };

	}

}
