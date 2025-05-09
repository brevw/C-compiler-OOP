package sem;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import ast.*;
import util.Utils;

public class TypeAnalyzer extends BaseSemanticAnalyzer {
    private final Map<String, StructTypeDecl> structNameSpace = new HashMap<>();
    private FunDef currentFunDef = null;
    private final Map<String, ClassDecl> classes = new HashMap<>();

	public Type visit(ASTNode node) {
		return switch(node) {
			case null -> {
				throw new IllegalStateException("Unexpected null value");
			}

            // Program
			case Program p -> {
                for (ASTNode c : p.children())
                    visit(c);
                yield BaseType.NONE;
			}

            // Block
			case Block b -> {
				for (ASTNode c : b.children())
					visit(c);
				yield BaseType.NONE;
			}

            // Decl
			case FunDecl fd -> {
                visit(fd.type);
                for (var n : fd.params) {
                    visit(n);
                }
				yield fd.type;
			}

			case FunDef fd -> {
                visit(fd.type);
                for (var n : fd.params) {
                    Type type = visit(n);
                    // mark the decl that are function arguments
                    n.isFunArg = true;
                }
                var oldCurrentFunDef = currentFunDef;
                currentFunDef = fd;
                visit(fd.block);
                currentFunDef = oldCurrentFunDef;
				yield fd.type;
			}

			case VarDecl vd -> {
                Type type = visit(vd.type);
                switch (type) {
                    case BaseType bt -> {
                        if (bt == BaseType.VOID) {
                            error("Variable " + vd.name + " cannot have type void");
                            yield BaseType.UNKNOWN;
                        }
                    }
                    default -> {}
                }
				yield vd.type;
			}

			case StructTypeDecl std -> {
                String name = std.name;
                if (structNameSpace.containsKey(name)) {
                    error("Struct " + std.name + ", duplicate declaration of a struct");
                } else {
                    // check types
                    for (VarDecl vd: std.varDecls) {
                        if (!hasFixedSizeTypeAndRecusivelyDefined(vd.type, name)) {
                            visit(vd);
                        } else {
                            handleStructTypeDeclRecursion(vd.type, std);
                        }
                    }
                    structNameSpace.put(name, std);
                }
				yield std.type;
			}
            case ClassDecl cd -> {
                String name = cd.name;
                cd.varDecls.forEach(vd -> visit(vd));
                cd.funDefs.forEach(fd -> visit(fd));
                classes.put(name, cd);
                yield cd.type;
            }

            // Type
			case Type t -> {
                switch (t) {
                    case StructType st -> {
                        if (!structNameSpace.containsKey(st.name)) {
                            error("Struct " + st.name + " is not defined");
                            yield BaseType.UNKNOWN;
                        } else {
                            st.decl = structNameSpace.get(st.name);
                        }
                    }
                    case ArrayType at -> {
                        Type type = visit(at.type);
                        if (type instanceof BaseType bt && bt == BaseType.VOID) {
                            error("Array cannot have type void");
                            yield BaseType.UNKNOWN;
                        }
                    }
                    case ClassType ct -> {
                        if (!classes.containsKey(ct.name)) {
                            error("Class " + ct.name + " is not defined");
                            yield BaseType.UNKNOWN;
                        }
                        if (ct.decl == null) {
                            ct.decl = classes.get(ct.name);
                        }
                    }
                    default -> {
                        for (ASTNode c : t.children()){
                            visit(c);
                        }
                    }
                }
				yield t;
			}

            // Expr
            case IntLiteral il -> {
                il.type = BaseType.INT;
                yield il.type;
            }

            case StrLiteral sl -> {
                sl.type = new ArrayType(BaseType.CHAR, sl.strValue.length() + 1);
                yield sl.type;
            }

            case ChrLiteral cl -> {
                cl.type = BaseType.CHAR;
                yield cl.type;
            }

            case VarExpr ve -> {
                ve.type = ve.vd == null ? BaseType.UNKNOWN : ve.vd.type;
                yield ve.type;
            }

            case FunCallExpr fce -> {
                if (fce.fd == null) {
                    fce.type = BaseType.UNKNOWN;
                } else {
                    fce.type = fce.fd.type;
                    if (fce.argsList.size() != fce.fd.params.size()) {
                        error("Function " + fce.name + " expects " + fce.fd.params.size() + " arguments but got " + fce.argsList.size());
                        yield BaseType.UNKNOWN;
                    }
                    for (int i = 0; i < fce.argsList.size(); i++) {
                        Type expected = fce.fd.params.get(i).type;
                        Type actual = visit(fce.argsList.get(i));
                        if (!expected.equals(actual)) {
                            error("Function " + fce.name + " expects " + expected + " but got " + actual);
                            yield BaseType.UNKNOWN;
                        }
                    }
                }
                if (fce.implicitClassMethodCall) {
                    fce.outerFunReturnSize = Utils.getSizeOfFunArgsAndReturnTypes(currentFunDef.type);
                }
                yield fce.type;
            }

            case BinOp bo -> {
                Type left = visit(bo.lhs);
                Type right = visit(bo.rhs);
                switch (bo.op) {
                    case ADD, SUB, MUL, DIV, MOD, OR, AND, GT, LT, GE, LE-> {
                        if (left instanceof BaseType && left == BaseType.INT && right instanceof BaseType && right == BaseType.INT) {
                            bo.type = BaseType.INT;
                        } else {
                            error("Addition is only allowed for integers");
                            bo.type = BaseType.UNKNOWN;
                        }
                    }
                    case NE, EQ -> {
                        if (!BaseType.VOID.equals(left) && !(left instanceof StructType) && !(left instanceof ArrayType) && left.equals(right)) {
                           bo.type = BaseType.INT;
                        } else {
                            error("In/equality is only allowed for non-void, non-struct, non-array types in left side");
                            bo.type = BaseType.UNKNOWN;
                        }
                    } default -> {
                        throw new IllegalStateException("Unexpected value");
                    }
                }
                yield bo.type;
            }

            case ArrayAccessExpr aae -> {
                Type array = visit(aae.arrayExpr);
                Type index = visit(aae.indexExpr);

                switch (index) {
                    case BaseType bt -> {
                        if (bt != BaseType.INT) {
                            error("Array index must be an integer");
                            aae.type = BaseType.UNKNOWN;
                        }
                    }
                    default -> {}
                }

                switch (array) {
                    case ArrayType at -> {
                        aae.type = at.type;
                    }
                    case PointerType pt -> {
                        aae.type = pt.type;
                    }
                    default -> {
                        error("Array access is only allowed for arrays or pointers");
                        aae.type = BaseType.UNKNOWN;
                    }

                }

                yield aae.type;
            }

            case FieldAccessExpr fae -> {
                Type type = visit(fae.structExpr);
                switch (type) {
                    case StructType st -> {
                        String fieldName = fae.fieldName;
                        StructTypeDecl std = structNameSpace.get(st.name);
                        if (std == null) {
                            error("Struct " + st.name + " is not defined");
                            fae.type = BaseType.UNKNOWN;
                        } else {
                            boolean foundField = false;
                            for (VarDecl vd : std.varDecls) {
                                if (vd.name.equals(fieldName)) {
                                    fae.type = vd.type;
                                    foundField = true;
                                    break;
                                }
                            }

                            if (!foundField) {
                                error("Field (" + fieldName + ") not found in struct " + st.name);
                                fae.type = BaseType.UNKNOWN;
                            }
                        }
                    }
                    case ClassType ct -> {
                        ClassDecl cd = classes.get(ct.name);
                        Optional<VarDecl> hit = ((ClassType) cd.type).decl.allVarDecls.stream().filter(v -> v.name.equals(fae.fieldName)).findFirst();
                        if (hit.isPresent()) {
                            fae.type = hit.get().type;
                        } else {
                            error("Field (" + fae.fieldName + ") not found in class " + ct.name);
                            fae.type = BaseType.UNKNOWN;
                        }
                    }

                    default -> {
                        error("Field access is only allowed for structs");
                        fae.type = BaseType.UNKNOWN;
                    }
                }
                yield fae.type;
            }

            case ValueAtExpr vae -> {
                Type type = visit(vae.expr);
                switch (type) {
                    case PointerType pt -> {
                        vae.type = pt.type;
                    }
                    default -> {
                        error("can only dereference a pointer");
                        vae.type = BaseType.UNKNOWN;
                    }
                }
                yield vae.type;
            }

            case AddressOfExpr aoe -> {
                Type type = visit(aoe.expr);
                aoe.type = new PointerType(type);
                yield aoe.type;
            }

            case SizeOfExpr soe -> {
                visit(soe.ofType);
                soe.type = BaseType.INT;
                yield soe.type;
            }

            case TypecastExpr tce -> {
                Type toType = visit(tce.toType);
                Type fromType = visit(tce.expr);
                if (fromType instanceof BaseType && fromType == BaseType.CHAR && toType instanceof BaseType && toType == BaseType.INT) {
                    // cast from char to int
                    tce.type = BaseType.INT;
                } else if (fromType instanceof ArrayType at && toType instanceof PointerType pt) {
                    // cast from Array to pointer
                    if (at.type.equals(pt.type)) {
                        tce.type = toType;
                    } else {
                        error("Cannot cast");
                        tce.type = BaseType.UNKNOWN;
                    }
                } else if (fromType instanceof PointerType && toType instanceof PointerType) {
                    // cast from pointer to pointer
                    tce.type = toType;
                } else if (fromType instanceof ClassType ct1 && toType instanceof ClassType ct2 && isSuperClass(ct2, ct1, classes)) {
                    // cast from superclass to class
                    tce.type = toType;
                } else {
                    error("Can only cast: char -> int, array -> pointer, pointer -> pointer, class -> superclass");
                    tce.type = BaseType.UNKNOWN;
                }

                yield tce.type;
            }

            case Assign a -> {
                Type left = visit(a.lhs);
                Type right = visit(a.rhs);
                if ((left instanceof BaseType && left == BaseType.VOID) || (left instanceof ArrayType)) {
                    error("Cannot assign to void or to an array");
                    a.type = BaseType.UNKNOWN;
                }else if (!left.equals(right)) {
                    error("Assignment type mismatch");
                    a.type = BaseType.UNKNOWN;
                } else {
                    a.type = left;
                }
                yield a.type;
            }

            case NewInstance ni -> {
                ni.type = visit(ni.ofClass);
                ni.ofClass.decl = classes.get(ni.ofClass.name);
                yield ni.type;
            }

            case InstanceFunCallExpr ifce -> {
                Type instanceType = visit(ifce.classInstance);
                if (instanceType instanceof ClassType ct) {
                    if(ct.decl != null && ct.decl.allFunDecls.containsKey(ifce.funCall.name)) {
                        // set funcallexpr fd to the function definition
                        ifce.funCall.fd = ct.decl.allFunDecls.get(ifce.funCall.name);
                        ifce.type = visit(ifce.funCall);
                    } else {
                        error("Function " + ifce.funCall.name + " not found in class " + ct.name);
                    }
                } else {
                    error("Instance function call is only allowed for class instances");
                    ifce.type = BaseType.UNKNOWN;
                }
                yield ifce.type;
            }

            // Stmt
            case While w -> {
                Type cond = visit(w.expr);
                if (!(cond instanceof BaseType && cond == BaseType.INT)) {
                    error("While condition must be an integer");
                }
                visit(w.stmt);
                yield BaseType.NONE;
            }

            case If i -> {
                Type cond = visit(i.expr);
                if (!(cond instanceof BaseType && cond == BaseType.INT)) {
                    error("If condition must be an integer");
                }
                visit(i.stmt1);
                if (i.stmt2 != null) {
                    visit(i.stmt2);
                }
                yield BaseType.NONE;
            }

            case Return r -> {
                if (currentFunDef != null) {
                    Type expectedReturnType = currentFunDef.type;
                    if (expectedReturnType.equals(BaseType.VOID)) {
                        if (r.expr != null) {
                            error("Void function cannot return a value");
                        }
                    } else {
                        if (r.expr == null) {
                            error("Function must return a value");
                        } else {
                            Type exprType = visit(r.expr);
                            if (!expectedReturnType.equals(exprType)) {
                                error("Return type mismatch");
                            }
                        }
                    }

                } else {
                    error("Return statement outside of function");
                }
                yield BaseType.NONE;
            }


            default -> {
                for (ASTNode c : node.children())
                    visit(c);
                yield BaseType.NONE;
            }
		};

	}

    private static boolean hasFixedSizeTypeAndRecusivelyDefined(Type type, String structName) {
        switch (type) {
            case PointerType pt -> {
                Type innerType = pt.type;
                if (innerType instanceof StructType st) {
                    return st.name.equals(structName);
                } else {
                    return hasFixedSizeTypeAndRecusivelyDefined(innerType, structName);
                }
            }
            case ArrayType at -> {return hasFixedSizeTypeAndRecusivelyDefined(at.type, structName);}
            default -> {return false;}
        }
    }

    private static void handleStructTypeDeclRecursion(Type type, StructTypeDecl std) {
        switch (type) {
            case StructType st -> {
                if (st.name.equals(std.name)) {
                    st.decl = std;
                }
            }
            case PointerType pt -> {
                handleStructTypeDeclRecursion(pt.type, std);
            }
            case ArrayType at -> {
                handleStructTypeDeclRecursion(at.type, std);
            }
            default -> {}
        };
    }

    private static boolean isSuperClass(ClassType superCt, ClassType ct, Map<String, ClassDecl> classes) {
        if (ct.name.equals(superCt.name)) {
            return true;
        }
        ClassDecl cd = classes.get(ct.name);
        while (cd != null) {
            if (cd.superClass != null && cd.superClass.name.equals(superCt.name)) {
                return true;
            }
            cd = classes.get(cd.superClass == null ? null : cd.superClass.name);
        }
        return false;
    }
}
