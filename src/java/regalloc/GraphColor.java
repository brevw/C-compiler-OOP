package regalloc;

import java.util.Set;

import gen.asm.Register;

public class GraphColor {
    private final Set<Register.Arch> availableColors;

    public GraphColor(Set<Register.Arch> availableColors) {
        this.availableColors = availableColors;
    }

    // implementation of the Chaitin algorithm
    public void colorGraph(InterferenceGraph iGraph) {
    }
}
