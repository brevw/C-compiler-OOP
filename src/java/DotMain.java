import ast.ASTPrinter;
import ast.DotPrinter;
import ast.Program;
import lexer.Scanner;
import lexer.Tokeniser;
import parser.Parser;

import java.io.*;


public class DotMain {

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
        System.out.println("Usage: java "+ Main2.class.getSimpleName()+" pass inputfile [outputfile]");
        System.out.println("if -ast is chosen, the output file must be specified");
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

        if (tokeniser.hasErrors()) {
            System.out.println("Lexing: failed (" + tokeniser.getNumErrors() + " errors)");
            System.exit(LEXER_FAIL);
            return;
        }
        if (parser.hasErrors()) {
            System.out.println("Parsing: failed (" + parser.getNumErrors() + " errors)");
            System.exit(PARSER_FAIL);
            return;
        }

        System.out.println("Parsing: pass");

        ensureArgExists(args, curArgCnt);
        File outputFile = new File(args[curArgCnt]);
        curArgCnt++;

        PrintWriter writer;
        try {
            writer = new PrintWriter(outputFile);
        } catch (FileNotFoundException e) {
            System.out.println("File "+outputFile+" does not exist.");
            System.exit(FILE_NOT_FOUND);
            return;
        }
        new DotPrinter(writer).visit(programAst);
        writer.close();
        System.out.println("Dot File Written");

        System.exit(PASS);
        return;

    }
}

