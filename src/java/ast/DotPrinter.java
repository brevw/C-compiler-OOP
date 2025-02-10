package ast;
import java.io.PrintWriter;


public class DotPrinter {
    private final PrintWriter writer;
    private static final String DOT_HEADER = "digraph ast {\n";
    private static final String DOT_FOOTER = "}\n";
    private int nodeCounter = 0;
    private final StringBuilder nodes = new StringBuilder();
    private final StringBuilder eldges = new StringBuilder();


    public DotPrinter(PrintWriter writer) {
        this.writer = writer;
    }

    public void visit(ASTNode node) {
        visitHelper(node);
        writer.print(DOT_HEADER);
        writer.print(nodes.toString());
        writer.print(eldges.toString());
        writer.print(DOT_FOOTER);
        writer.flush();
    }

    private int visitHelper(ASTNode node) {
        int parentId = ++nodeCounter;
        switch (node) {
            // Decl
            case FunDecl fd -> {
                addNewNode(node.getClass().getSimpleName(), parentId);
                int childId = visitHelper(fd.type);
                linkNodes(parentId, childId);
                addNewNode("NAME("+fd.name+")", ++nodeCounter);
                linkNodes(parentId, nodeCounter);
                for (VarDecl vd : fd.params) {
                    int vdId = visitHelper(vd);
                    linkNodes(parentId, vdId);
                }
            }

            case FunDef fd -> {
                addNewNode(node.getClass().getSimpleName(), parentId);
                int childId = visitHelper(fd.type);
                linkNodes(parentId, childId);
                addNewNode("NAME("+fd.name+")", ++nodeCounter);
                linkNodes(parentId, nodeCounter);
                for (VarDecl vd : fd.params) {
                    int vdId = visitHelper(vd);
                    linkNodes(parentId, vdId);
                }
                childId = visitHelper(fd.block);
                linkNodes(parentId, childId);
            }


            case VarDecl vd -> {
                addNewNode(node.getClass().getSimpleName(), parentId);
                int childId = visitHelper(vd.type);
                linkNodes(parentId, childId);
                addNewNode("NAME("+vd.name+")", ++nodeCounter);
                linkNodes(parentId, nodeCounter);
            }

            // Expr
            case VarExpr ve -> {
                addNewNode(node.getClass().getSimpleName(), parentId);
                addNewNode("NAME("+ve.name+")", ++nodeCounter);
                linkNodes(parentId, nodeCounter);
            }

            case IntLiteral il -> {
                addNewNode("Cst(" + il.intValue  + ")", parentId);
            }

            case ChrLiteral cl -> {
                addNewNode("Cst(" + cl.charValue + ")", parentId);
            }

            case StrLiteral sl -> {
                addNewNode("Cst(" + sl.strValue + ")", parentId);
            }

            case FunCallExpr fce -> {
                addNewNode(node.getClass().getSimpleName(), parentId);
                addNewNode("NAME("+fce.name+")", ++nodeCounter);
                linkNodes(parentId, nodeCounter);
                for (Expr e : fce.argsList) {
                    int eId = visitHelper(e);
                    linkNodes(parentId, eId);
                }
            }

            case FieldAccessExpr fae -> {
                addNewNode(node.getClass().getSimpleName(), parentId);
                int eId = visitHelper(fae.structExpr);
                linkNodes(parentId, eId);
                addNewNode("NAME("+fae.fieldName+")", ++nodeCounter);
                linkNodes(parentId, nodeCounter);
            }

            // Type
            case BaseType bt -> {
                addNewNode(bt.name(), parentId);
            }

            case ArrayType at -> {
                addNewNode(node.getClass().getSimpleName(), parentId);
                int childId = visitHelper(at.type);
                linkNodes(parentId, childId);
                addNewNode("SIZE("+at.nbrElements+")", ++nodeCounter);
                linkNodes(parentId, nodeCounter);
            }

            case StructType st -> {
                addNewNode(node.getClass().getSimpleName(), parentId);
                addNewNode("NAME("+st.name+")", ++nodeCounter);
                linkNodes(parentId, nodeCounter);
            }


            // Op
            case Op op -> {
                switch (op) {
                    case ADD -> addNewNode("+" , parentId);
                    case SUB -> addNewNode("-" , parentId);
                    case MUL -> addNewNode("*" , parentId);
                    case DIV -> addNewNode("/" , parentId);
                    case MOD -> addNewNode("%" , parentId);
                    case LT -> addNewNode("<"  , parentId);
                    case GT -> addNewNode(">"  , parentId);
                    case LE -> addNewNode("<=" , parentId);
                    case GE -> addNewNode(">=" , parentId);
                    case EQ -> addNewNode("==" , parentId);
                    case NE -> addNewNode("!=" , parentId);
                    case AND -> addNewNode("&&", parentId);
                    case OR -> addNewNode("||" , parentId);
                    default -> throw new IllegalStateException("Unexpected value: " + op);
                }
            }

            default -> {
                addNewNode(node.getClass().getSimpleName(), parentId);
                for (ASTNode child : node.children()) {
                    int childId = visitHelper(child);
                    linkNodes(parentId, childId);
                }
            }
        }
        return parentId;
    }


    private void linkNodes(int parent, int child) {
        eldges.append("Node" + parent + " -> " + "Node" + child + ";\n");
    }
    private void addNewNode(String name, int id) {
        nodes.append("Node" + id + " [label=\"" + name + "\"];\n");
    }
}
