package sem;

import java.util.HashMap;
import java.util.Map;

import ast.*;

public class TypeAnalyzer extends BaseSemanticAnalyzer {
    private final Map<String, StructTypeDecl> structNameSpace = new HashMap<>();
    private FunDef currentFunDef = null;

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
                    visit(n);
                }
                currentFunDef = fd;
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
                        if (!isPointerOfStruct(vd.type, name)) {
                            visit(vd);
                        }
                    }
                    structNameSpace.put(name, std);
                }
				yield std.type;
			}

            // Type
			case Type t -> {
                switch (t) {
                    case StructType st -> {
                        if (!structNameSpace.containsKey(st.name)) {
                            error("Struct " + st.name + " is not defined");
                            yield BaseType.UNKNOWN;
                        }
                    }
                    default -> {}
                }
                for (ASTNode c : t.children()){
                    visit(c);
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
                ve.type = ve.vd.type;
                yield ve.type;
            }

            case FunCallExpr fce -> {
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
                        if (!(left instanceof BaseType && left == BaseType.VOID) && !(left instanceof StructType) && !(left instanceof ArrayType) && left.equals(right)) {
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
                } else {
                    error("Can only cast: char -> int, array -> pointer, pointer -> pointer");
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
                Type expectedReturnType = currentFunDef.type;
                if (r.expr != null) {
                    Type exprType = visit(r.expr);
                    if (!expectedReturnType.equals(exprType)) {
                        error("Return type mismatch");
                    }
                } else { // expected void function
                    if (!expectedReturnType.equals(BaseType.VOID)) {
                        error("Return type mismatch");
                    }
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

    private static boolean isPointerOfStruct(Type type, String structName) {
        do {
            if (type instanceof PointerType pt) {
                type = pt.type;
            } else {
                return false;
            }
        } while (type instanceof PointerType);
        return type instanceof StructType st && st.name.equals(structName);
    }

}
