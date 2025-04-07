package ast;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;

import gen.asm.Label;
import util.Utils;

public final class ClassDecl extends Decl{

    public final ClassType superClass; // null if no superclass
    public final List<VarDecl> varDecls;
    public final List<FunDef> funDefs;
    public LinkedHashMap<String, Label> funToLabel; // to be filled by the virtual table creation and is ordered
    public Label virtualTableLabel = null; // to be filled by the virtual table creation
    public final List<VarDecl> allVarDecls = new ArrayList<>(); // to be filled in the name analyzer
                                                                // random order at first but in Virtual Table Creation will
                                                                // be ordered
    public final List<String> allFunNames = new ArrayList<>(); // to be filled in the name analyzer

    private Integer size = null;
    private HashMap<String, Integer> offsets = null;

    public ClassDecl(String name, String superClassName, List<VarDecl> varDecls, List<FunDef> funDefs) {
        this.superClass = superClassName == null ? null : new ClassType(superClassName);
        this.varDecls = varDecls;
        this.funDefs = funDefs;
        this.name = name;
        this.type = new ClassType(name);
    }

    @Override
    public List<ASTNode> children() {
        ArrayList<ASTNode> children = new ArrayList<>();
        if (superClass != null) {
            children.add(superClass);
        }
        children.addAll(varDecls);
        children.addAll(funDefs);
        return children;
    }

    public int getSize() {
        return Objects.requireNonNullElseGet(size, () -> {
            computeOffsetsAndSize();
            return size;
        });
    }

    public int getOffset(String fieldName) {
        return Objects.requireNonNullElseGet(offsets, () -> {
            computeOffsetsAndSize();
            return offsets;
        }).get(fieldName);
    }

    private void computeOffsetsAndSize(){
        size = 1; // one byte for the vtable pointer
        offsets = new HashMap<>();
        for (VarDecl vd : varDecls){
            int fieldSize = vd.type.getSize();
            int alignment = (vd.type instanceof StructType st) ? st.getLargestAlignment() : fieldSize;
            int offsetToCorrectAlignment = Utils.computeAlignmentOffset(size, alignment);
            // allign before computing the offset
            size += offsetToCorrectAlignment;
            offsets.put(vd.name, size);
            vd.fpOffset = size; // redundant, but useful for debugging
            size += fieldSize;
        }
    }

}
