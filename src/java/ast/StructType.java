package ast;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import util.Utils;

public final class StructType implements Type{

    public final String name;
    public StructTypeDecl decl = null; // to be filled in the TypeAnalysis pass
    private Integer size = null;
    private Map<String, Integer> offsets = null;
    private Integer largestAlignment = null;

    public StructType(String name){
        this.name = name;
    }

    @Override
    public boolean equals(Object obj){
        if (obj instanceof StructType other){
            return name.equals(other.name);
        }
        return false;
    }

    public List<ASTNode> children(){
        return List.of();
    }

    @Override
    public int getSize(){
        // compute once and cache the result
        return Objects.requireNonNullElseGet(size, () -> {
            computeOffsetsAndSize();
            return size;
        });
    }

    public int getOffset(String fieldName){
        // compute once and cache the result
        return Objects.requireNonNullElseGet(offsets, () -> {
            computeOffsetsAndSize();
            return offsets;
        }).get(fieldName);
    }

    public int getLargestAlignment(){
        // compute once and cache the result
        return Objects.requireNonNullElseGet(largestAlignment, () -> {
            largestAlignment = decl.varDecls.stream().mapToInt(
                vd -> (vd.type instanceof StructType st) ? st.getLargestAlignment() : vd.type.getSize()
            ).max().orElse(0);
            return largestAlignment;
        });
    }

    // Compute the size of the struct and the offset of each field
    // (always positive)
    private void computeOffsetsAndSize(){
        size = 0;
        offsets = new HashMap<>();
        largestAlignment = getLargestAlignment();
        for (VarDecl vd : decl.varDecls){
            int fieldSize = vd.type.getSize();
            int alignment = (vd.type instanceof StructType st) ? st.getLargestAlignment() : fieldSize;
            int offsetToCorrectAlignment = Utils.computeAlignmentOffset(size, alignment);
            // allign before computing the offset
            size += offsetToCorrectAlignment;
            offsets.put(vd.name, size);
            size += fieldSize;
        }

        // pad so that the size of the struct is a multiple of the largest alignment
        size += Utils.computeAlignmentOffset(size, largestAlignment);
    }


}
