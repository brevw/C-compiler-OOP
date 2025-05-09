package ast;

import java.io.PrintWriter;

public class ASTPrinter {

    private final PrintWriter writer;

    public ASTPrinter(PrintWriter writer) {
            this.writer = writer;
    }

    public void visit(ASTNode node) {
        if (node == null)
            throw new IllegalStateException("Unexpected null value");

        boolean printClassName = !(node instanceof Op || node instanceof BaseType);
        if (printClassName) {
            writer.print(node.getClass().getSimpleName()+"(");
        }

        switch(node) {

            // Decl
            case FunDef fd -> {
                visit(fd.type);
                writer.print(","+fd.name);
                for (VarDecl vd : fd.params) {
                    writer.print(",");
                    visit(vd);

                }
                writer.print(",");
                visit(fd.block);
            }

            case FunDecl fd -> {
                visit(fd.type);
                writer.print(","+fd.name);
                for (VarDecl vd : fd.params) {
                    writer.print(",");
                    visit(vd);
                }
            }

            case VarDecl vd -> {
                visit(vd.type);
                writer.print(","+vd.name);
            }
            case ClassDecl cd -> {
                writer.print(cd.name);
                if (cd.superClass != null) {
                    writer.print(","+cd.superClass.name);
                }
                for (VarDecl vd : cd.varDecls) {
                    writer.print(",");
                    visit(vd);
                }
                for (FunDef fd : cd.funDefs) {
                    writer.print(",");
                    visit(fd);
                }
            }


            // Expr
            case VarExpr v -> {
                writer.print(v.name);
            }

            case IntLiteral i -> {
                writer.print(i.intValue);
            }

            case ChrLiteral c -> {
                writer.print(c.charValue);
            }

            case StrLiteral s -> {
                writer.print(s.strValue);
            }

            case FunCallExpr f -> {
                writer.print(f.name);
                for (Expr e : f.argsList) {
                    writer.print(",");
                    visit(e);
                }
            }

            case FieldAccessExpr fa -> {
                visit(fa.structExpr);
                writer.print(","+fa.fieldName);
            }

            case InstanceFunCallExpr ifc -> {
                visit(ifc.classInstance);
                writer.print(",");
                visit(ifc.funCall);
            }

            case NewInstance ni -> {
                visit(ni.ofClass);
            }

            // Type
            case BaseType bt -> {
                writer.print(bt.name());
            }

            case ArrayType at -> {
                visit(at.type);
                writer.print(","+at.nbrElements);
            }

            case StructType st -> {
                writer.print(st.name);
            }
            case ClassType ct -> {
                writer.print(ct.name);
            }

            // Op
            case Op op -> {
                writer.print(op.name());
            }


            default -> {
                String delimiter = "";
                for (ASTNode child : node.children()) {
                    writer.print(delimiter);
                    delimiter = ",";
                    visit(child);
                }
            }
        }

        if (printClassName){
            writer.print(")");
        }

        switch(node) {
            case Program ignored -> {
                writer.flush(); // ensures the writer flushes all the writes at the end of our program
            }
            default -> {}
        }

    }



}
