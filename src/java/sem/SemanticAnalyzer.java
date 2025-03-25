package sem;

import util.CompilerPass;

public class SemanticAnalyzer extends CompilerPass {
    public static boolean promoteVarToReg = false;

	public void analyze(ast.Program prog) {

		NameAnalyzer na = new NameAnalyzer();
		na.visit(prog);
		this.numErrors += na.getNumErrors();

		TypeAnalyzer tc = new TypeAnalyzer();
		tc.visit(prog);
		this.numErrors += tc.getNumErrors();

        LastPassAnalyzer lpa = new LastPassAnalyzer();
        lpa.visit(prog);
        this.numErrors += lpa.getNumErrors();

        // flag above is used to enable/disable the promotion of variables to registers
        if (this.numErrors == 0 && promoteVarToReg) {
            PromoteVarToReg pvr = new PromoteVarToReg();
            pvr.visit(prog);
        }
	}
}
