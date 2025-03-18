import ast.Program;
import gen.ProgramCodeGen;
import gen.asm.AssemblyProgram;
import lexer.Scanner;
import lexer.Tokeniser;
import parser.Parser;
import regalloc.CFGraph;
import regalloc.DotPrinterCFG;
import regalloc.DotPrinterIG;
import regalloc.InterferenceGraph;
import regalloc.LivenessAnalysis;
import sem.SemanticAnalyzer;

import java.io.*;
import java.util.ArrayList;
import java.util.List;


/**
 * This is the entry point to the compiler. This files should not be modified.
 */
public class DotMain_CFG_IG {

    private static final String LOGFILE = "out.log";
    private static final int UNKNOWN_EXCEPTION = 1;
    private static final int FILE_NOT_FOUND = 2;
    private static final int IO_EXCEPTION   = 3;
    private static final int MODE_FAIL      = 254;
    private static final int LEXER_FAIL     = 250;
    private static final int PARSER_FAIL    = 245;
    private static final int SEM_FAIL       = 240;
    private static final int PASS           = 0;


    private static void usage() {
        System.out.println("Usage: java "+ DotMain_CFG_IG.class.getSimpleName()+" pass inputfile [outputfileCFG] [outputfileIG]");
        System.out.println("where CFG is the control flow graph and IG is the interference graph");
        System.exit(-1);
    }

    private static void ensureArgExists(String[] args, int num) {
        if (num >= args.length)
        usage();
    }


    private static void logThrowableWithoutMessage(Throwable t) {
        try {
            BufferedWriter bw = new BufferedWriter(new FileWriter(LOGFILE));
            bw.write("java.lang.Throwable:");
            bw.newLine();
            for (StackTraceElement ste : t.getStackTrace()) {
                bw.write(ste.toString());
                bw.newLine();
            }
            bw.close();
        } catch (IOException ioe) {
            ioe.printStackTrace();
            System.exit(IO_EXCEPTION);
        }
    }
    public static void main(String[] args)  {
        try {
            compile(args);
        }  catch (Throwable t) {
            t.printStackTrace();
            logThrowableWithoutMessage(t);
            System.exit(UNKNOWN_EXCEPTION);
        }
    }

    public static void compile(String[] args) {

        ensureArgExists(args, 0);

        int curArgCnt = 0;
        ensureArgExists(args, curArgCnt);
        File inputFile = new File(args[curArgCnt]);
        curArgCnt++;

        Scanner scanner;
        try {
            scanner = new Scanner(inputFile);
        } catch (FileNotFoundException e) {
            System.out.println("File "+inputFile+" does not exist.");
            System.exit(FILE_NOT_FOUND);
            return;
        }

        Tokeniser tokeniser = new Tokeniser(scanner);
        Parser parser = new Parser(tokeniser);
        Program programAst = parser.parse();

        // Tokinisation
        if (tokeniser.hasErrors()) {
            System.out.println("Lexing: failed (" + tokeniser.getNumErrors() + " errors)");
            System.exit(LEXER_FAIL);
            return;
        }

        // Parsing
        if (parser.hasErrors()) {
            System.out.println("Parsing: failed (" + parser.getNumErrors() + " errors)");
            System.exit(PARSER_FAIL);
            return;
        }
        System.out.println("Parsing: pass");

        // Semantic Analysis
        SemanticAnalyzer sem = new SemanticAnalyzer();
        sem.analyze(programAst);
        if (sem.hasErrors()) {
            System.out.println("Semantic analysis: Failed (" + sem.getNumErrors() + " errors)");
            System.exit(SEM_FAIL);
        }

        System.out.println("Semantic analysis: Pass");

        // Code Generation (with virtual registers)
        AssemblyProgram asmProgWithVirtualRegs = new AssemblyProgram();
        ProgramCodeGen progGen = new ProgramCodeGen(asmProgWithVirtualRegs);
        progGen.generate(programAst);

        // Generate CFG for main
        CFGraph cfg = new CFGraph(asmProgWithVirtualRegs);

        ensureArgExists(args, curArgCnt);
        File outputFileCFG = new File(args[curArgCnt]);
        curArgCnt++;

        ensureArgExists(args, curArgCnt);
        File outputFileIG = new File(args[curArgCnt]);
        curArgCnt++;
        try {
            PrintWriter writerCFG = new PrintWriter(outputFileCFG);
            PrintWriter writerIG = new PrintWriter(outputFileIG);

            // generate the CFG of the main function
            ArrayList<CFGraph.Node> entryNodes = cfg.generateGraph();

            // analyse the liveness of the main function
            entryNodes.forEach(e -> (new LivenessAnalysis()).analyseLiveness(e));

            // build the interference graph
            List<InterferenceGraph> iGraphs = entryNodes.stream().map(e -> {
                InterferenceGraph iGraph = new InterferenceGraph();
                iGraph.buildInterferenceGraph(e);
                return iGraph;
            }).toList();

            // produce the Control Flow Graph Dot file
            DotPrinterCFG dotPrinterCFG = new DotPrinterCFG(writerCFG);
            dotPrinterCFG.visit(entryNodes);
            writerCFG.close();

            // produce the Interference Graph Dot file
            DotPrinterIG dotPrinterIG = new DotPrinterIG(writerIG);
            dotPrinterIG.visit(iGraphs);
            writerIG.close();
        } catch (FileNotFoundException e) {
            System.out.println("File does not exist.");
            System.exit(FILE_NOT_FOUND);
        }

        System.exit(PASS);
    }
}

