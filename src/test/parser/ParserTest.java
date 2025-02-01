package parser;

import lexer.Scanner;
import lexer.Token;
import lexer.Tokeniser;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Random;

import static org.junit.jupiter.api.Assertions.*;

class ParserTest {
    // needed consts for program
    private static final Random RANDOM = new Random(90);
    private static final int MAX_COMMENT_LINE_LENGTH = 50;
    private static final int MAX_IDENTIFIER_LENGTH = 5;
    private static final int MAX_INT_LITERAL_LENGTH = 7;
    private static final int MAX_STRING_LITERAL_LENGTH = 20;
    private static final int MAX_NBR_INCLUDES = 5;
    private static final int MAX_ASTERISK_REPETITION = 20;
    private static final int MAX_RECURSIVE_CALLS = 10;

    // Building Blocks
    private static final char[] LOWER_CASE_ALPHA = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final char[] UPPER_CASE_ALPHA = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    private static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    private static final char[] SPECIAL_CHAR_WITHOUT_QUOTES = {'`', '~', '@', '!', '$', '#', '^', '*', '%', '&', '(', ')', '[', ']', '{', '}', '<', '>', '+', '=', '_', '-', '|', '/', ';', ':', ',', '.', '?'};
    private static final char[] ESCAPED_CHAR = {'\u0007', '\b', '\n', '\r', '\t', '\\', '\'', '\"', '\0'};
    private static final String[] ESCAPED_CHAR_STRING = {"\\a", "\\b", "\\n", "\\r", "\\t", "\\\\", "\\'", "\\\"", "\\0"};
    private static final String TAB = "\t";
    private static final String[] BINARY_OPS = {">", "<", ">=", "<=", "!=", "==", "+", "-", "/", "*", "%", "||", "&&"};

    // Categories
    private static final String[] KEYWORDS = {"if", "else", "while", "return", "struct", "sizeof", "continue", "break"};
    private static final String[] TYPES = {"int", "void", "char"};

    private static final char[] IDENTIFIER_FIRST_CHAR =  appendToCharArray(concatCharArrays(LOWER_CASE_ALPHA, UPPER_CASE_ALPHA), '_');
    private static final char[] IDENTIFIER_REST_CHAR = appendToCharArray(concatCharArrays(LOWER_CASE_ALPHA, UPPER_CASE_ALPHA, DIGITS), '_');
    private static final char[] STRING_LITERAL_CHAR_WITHOUT_ESCAPED = appendToCharArray(concatCharArrays(LOWER_CASE_ALPHA, UPPER_CASE_ALPHA, DIGITS, SPECIAL_CHAR_WITHOUT_QUOTES), ' ', '\'');
    private static final char[] CHAR_LITERAL_CHAR_WITHOUT_ESCAPED = appendToCharArray(concatCharArrays(LOWER_CASE_ALPHA, UPPER_CASE_ALPHA, DIGITS, SPECIAL_CHAR_WITHOUT_QUOTES), ' ', '\"');
    private static final char[] COMMENT_CHAR = concatCharArrays(IDENTIFIER_REST_CHAR);

    private static String generateCharLiteral(){
        boolean useEscapedChar = RANDOM.nextBoolean();
        if(useEscapedChar){
            int index = RANDOM.nextInt(ESCAPED_CHAR.length);
            return '\'' + ESCAPED_CHAR_STRING[index] + '\'';
        } else {
            int index = RANDOM.nextInt(CHAR_LITERAL_CHAR_WITHOUT_ESCAPED.length);
            return '\'' + String.valueOf(CHAR_LITERAL_CHAR_WITHOUT_ESCAPED[index]) + '\'';
        }
    }
    private static String generateComments(int nbrLines, boolean usingSingleLineComments){
        StringBuilder sb = new StringBuilder();
        String prefix = usingSingleLineComments ? "//": "";
        if (!usingSingleLineComments){
            sb.append("/*");
        }
        for (int i = 0; i < nbrLines; ++i){
            sb.append(prefix);
            int lineLength = RANDOM.nextInt(MAX_COMMENT_LINE_LENGTH/2, MAX_COMMENT_LINE_LENGTH);
            for (int j = 0; j < lineLength; ++j){
                sb.append(COMMENT_CHAR[RANDOM.nextInt(COMMENT_CHAR.length)]);
            }
            sb.append('\n');
        }
        if (!usingSingleLineComments){
            sb.append("*/");
        }
        return sb.toString();
    }
    private static String generateIntLiteral(){
        StringBuilder sb = new StringBuilder();
        for(int i = 0; i < MAX_INT_LITERAL_LENGTH; ++i){
            sb.append(DIGITS[RANDOM.nextInt(DIGITS.length)]);
        }
        return sb.toString();
    }
    private static String generateIdentifier(int length){
        assert (length >= 1);
        StringBuilder sb = new StringBuilder();
        sb.append(IDENTIFIER_FIRST_CHAR[RANDOM.nextInt(IDENTIFIER_FIRST_CHAR.length)]);
        for (int i = 0; i < length; ++i){
            sb.append(IDENTIFIER_REST_CHAR[RANDOM.nextInt(IDENTIFIER_REST_CHAR.length)]);
        }
        String s = sb.toString();
        if (Arrays.asList(KEYWORDS).contains(s) || Arrays.asList(TYPES).contains(s)) {
            return generateIdentifier(length);
        }
        return s;
    }
    private static String generateStringLiteral(int length){
        StringBuilder sb = new StringBuilder();
        sb.append('\"');
        for(int i = 0; i < length; ++i){
            boolean useEscapedChar = RANDOM.nextBoolean();
            if (useEscapedChar){
                int index = RANDOM.nextInt(ESCAPED_CHAR_STRING.length);
                sb.append(ESCAPED_CHAR_STRING[index]);
            } else {
                int index = RANDOM.nextInt(STRING_LITERAL_CHAR_WITHOUT_ESCAPED.length);
                sb.append(STRING_LITERAL_CHAR_WITHOUT_ESCAPED[index]);
            }
        }
        return sb.append('\"').toString();
    }
    private static String generateInclude(){
        return STR."#include \{generateStringLiteral(RANDOM.nextInt(MAX_STRING_LITERAL_LENGTH / 2, MAX_STRING_LITERAL_LENGTH) + 1)}";
    }
    private static String generateStructType(){
        return STR."struct \{generateIdentifier(MAX_IDENTIFIER_LENGTH)}";
    }
    private static String generateType(){
        StringBuilder sb = new StringBuilder();
        int index = RANDOM.nextInt(TYPES.length + 1);
        if (index <= TYPES.length - 1){
            sb.append(TYPES[index]);
        } else {
            sb.append(generateStructType());
        }
        sb.append(' ');
        int repetition = RANDOM.nextInt(MAX_ASTERISK_REPETITION + 1);
        sb.append("*".repeat(repetition));
        return sb.toString();
    }
    private static String generateParam(){
        StringBuilder sb = new StringBuilder();
        boolean takeOption = RANDOM.nextBoolean();
        if (!takeOption){
            return sb.toString();
        }
        sb.append(generateType())
                .append(generateIdentifier(MAX_IDENTIFIER_LENGTH));
        int repetition = RANDOM.nextInt(MAX_ASTERISK_REPETITION + 1);
        for (int i = 0; i < repetition; i++) {
            sb.append('[').append(generateIntLiteral()).append(']');
        }

        int repetition2 = RANDOM.nextInt(MAX_ASTERISK_REPETITION + 1);
        for (int i = 0; i < repetition2; i++) {
            sb.append(',')
                    .append(generateType())
                    .append(generateIdentifier(MAX_IDENTIFIER_LENGTH));
            int repetition3 = RANDOM.nextInt(MAX_ASTERISK_REPETITION + 1);
            for (int j = 0; j < repetition3; j++) {
                sb.append('[').append(generateIntLiteral()).append(']');
            }
        }
        return sb.toString();

    }
    private static String generateStructDecl(int depth){
        StringBuilder sb = new StringBuilder();
        sb.append(TAB.repeat(depth)).append(generateStructType()).append("{\n");
        int repetition = RANDOM.nextInt(1, MAX_ASTERISK_REPETITION + 1);
        for (int i = 0; i < repetition; i++) {
            sb.append(generateVarDecl(depth + 1)).append('\n');
        }
        return sb.append(TAB.repeat(depth))
                .append("};")
                .toString();
    }
    private static String generateVarDecl(int depth){
        StringBuilder sb = new StringBuilder();
        sb.append(TAB.repeat(depth))
                .append(generateType())
                .append(' ')
                .append(generateIdentifier(MAX_IDENTIFIER_LENGTH))
                .append(' ');
        int repetition = RANDOM.nextInt( MAX_ASTERISK_REPETITION + 1);
        for (int i = 0; i < repetition; i++) {
            sb.append('[').append(generateIntLiteral()).append(']');
        }
        return sb.append(';').toString();
    }
    private static String generateFunDecl(int depth){
        StringBuilder sb = new StringBuilder();
        return sb.append(TAB.repeat(depth))
                .append(generateType())
                .append(' ')
                .append(generateIdentifier(MAX_IDENTIFIER_LENGTH))
                .append('(')
                .append(generateParam())
                .append(')')
                .append(';')
                .toString();
    }
    private static String generateBlock(int depth, int recursiveCalls){
        if (recursiveCalls > MAX_RECURSIVE_CALLS) {
            return STR."\{TAB.repeat(depth)}{}";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('{')
                .append('\n');
        int repetition = RANDOM.nextInt( MAX_ASTERISK_REPETITION + 1);
        for (int i = 0; i < repetition; i++) {
            sb.append(generateVarDecl(depth + 1)).append('\n');
        }
        repetition = RANDOM.nextInt( MAX_ASTERISK_REPETITION + 1);
        for (int i = 0; i < repetition; i++) {
            sb.append(generateStmt(depth + 1, recursiveCalls + 1)).append('\n');
        }
        return sb.append(TAB.repeat(depth)).append('}').toString();
    }
    private static String generateSizeOf(){
        return (new StringBuilder())
                .append("sizeof (")
                .append(generateType())
                .append(')')
                .toString();
    }
    private static String generateAddressOf(int depth, int recursiveCalls){
        return (new StringBuilder())
                .append(" &")
                .append(generateExp(depth, recursiveCalls + 1))
                .toString();
    }
    private static String generateValueAt(int depth, int recursiveCalls){
        return (new StringBuilder())
                .append('*')
                .append(generateExp(depth, recursiveCalls + 1))
                .toString();
    }
    private static String generateFieldAccess(int depth, int recursiveCalls){
        return (new StringBuilder())
                .append(generateExp(depth, recursiveCalls + 1))
                .append('.')
                .append(generateIdentifier(MAX_IDENTIFIER_LENGTH))
                .toString();
    }
    private static String generateArrayAccess(int depth, int recursiveCalls){
        return (new StringBuilder())
                .append(generateExp(depth, recursiveCalls + 1))
                .append('[')
                .append(generateExp(depth, recursiveCalls + 1))
                .append(']')
                .toString();
    }
    private static String generateFunCall(int depth, int recursiveCalls){
        return (new StringBuilder())
                .append('(')
                .append(generateType())
                .append(')')
                .append(generateExp(depth + 1, recursiveCalls + 1))
                .toString();
    }
    private static String generateTypeCast(int depth, int recursiveCalls){
        return (new StringBuilder())
                .append('(')
                .append(generateType())
                .append(") ")
                .append(generateExp(depth, recursiveCalls + 1))
                .toString();
    }
    private static String generateExp(int depth, int recursiveCalls){
        StringBuilder sb = new StringBuilder();
        int decision = RANDOM.nextInt(14);
        if (recursiveCalls > MAX_RECURSIVE_CALLS){
            decision = 4;
        }
        switch (decision){
            case 0:
                return sb.append('(')
                        .append(generateExp(depth, recursiveCalls + 1))
                        .append(')')
                        .toString();
            case 1:
                return sb.append(generateExp(depth, recursiveCalls + 1))
                        .append('=')
                        .append(generateExp(depth, recursiveCalls + 1))
                        .toString();
            case 2:
                if (RANDOM.nextBoolean())
                    return generateIdentifier(MAX_IDENTIFIER_LENGTH);
                else
                    return generateIntLiteral();
            case 3:
                if (RANDOM.nextBoolean())
                    return '+' + generateExp(depth, recursiveCalls + 1);
                else
                    return '-' + generateExp(depth, recursiveCalls + 1);
            case 4:
                return generateCharLiteral();
            case 5:
                return generateStringLiteral(MAX_STRING_LITERAL_LENGTH);
            case 6:
                int index = RANDOM.nextInt(BINARY_OPS.length);
                return sb.append(generateExp(depth, recursiveCalls + 1))
                        .append(BINARY_OPS[index])
                        .append(generateExp(depth, recursiveCalls + 1))
                        .toString();
            case 7:
                return generateArrayAccess(depth, recursiveCalls + 1);
            case 8:
                return generateFieldAccess(depth, recursiveCalls + 1);
            case 9:
                return generateValueAt(depth, recursiveCalls + 1);
            case 10:
                return generateAddressOf(depth, recursiveCalls + 1);
            case 11:
                return generateFunCall(depth, recursiveCalls + 1);
            case 12:
                return generateSizeOf();
            case 13:
                return generateTypeCast(depth, recursiveCalls + 1);
            default:
                assert false;
                return null;
        }

    }
    private static String generateStmt(int depth, int recursiveCalls){
        StringBuilder sb = new StringBuilder();
        sb.append(TAB.repeat(depth));
        int decision = RANDOM.nextInt(7);
        if (recursiveCalls > MAX_RECURSIVE_CALLS) {
            decision = 5;
        }
        switch (decision){
            case 0:
                return sb.append(generateBlock(depth, recursiveCalls + 1)).toString();
            case 1:
                return sb.append("while (")
                        .append(generateExp(depth + 1, recursiveCalls + 1))
                        .append(")\n").append(generateStmt(depth + 1, recursiveCalls +1))
                        .toString();
            case 2:
                sb.append("if (")
                        .append(generateExp(depth, recursiveCalls + 1))
                        .append(")\n")
                        .append(generateStmt(depth + 1, recursiveCalls + 1))
                        .append('\n');
                if (RANDOM.nextBoolean()){
                    sb.append(TAB.repeat(depth))
                            .append("else ")
                            .append(generateStmt(depth + 1, recursiveCalls + 1));
                }
                return sb.toString();
            case 3:
                return sb.append("return ").append(generateExp(depth + 1, recursiveCalls + 1)).append(';').toString();
            case 4:
                return sb.append(generateExp(depth + 1, recursiveCalls + 1)).append(';').toString();
            case 5:
                return sb.append("continue;").toString();
            case 6:
                return sb.append("break;").toString();
            default:
                assert false;
                return null;
        }
    }
    private static String generateFunDef(int depth, int recursiveCalls){
        StringBuilder sb = new StringBuilder();
        return sb.append(TAB.repeat(depth))
                .append(generateType())
                .append(' ')
                .append(generateIdentifier(MAX_IDENTIFIER_LENGTH))
                .append('(')
                .append(generateParam())
                .append(')')
                .append('\n')
                .append(generateBlock(depth + 1, recursiveCalls + 1))
                .toString();
    }
    private static String generateProgram(){
        int depth = 0;
        StringBuilder sb = new StringBuilder();
        int nbrIncludes = RANDOM.nextInt(MAX_NBR_INCLUDES) + 1;
        for (int i = 0; i < nbrIncludes; ++i){
            sb.append(generateInclude()).append('\n');
        }
        sb.append(generateComments(3, false)).append('\n');

        int nbrRepetitions = RANDOM.nextInt(MAX_ASTERISK_REPETITION);
        for (int i = 0; i < nbrRepetitions; ++i){
            int decision = RANDOM.nextInt(4);
            switch (decision){
                case 0:
                    sb.append(generateStructDecl(depth)).append('\n');
                    break;
                case 1:
                    sb.append(generateVarDecl(depth)).append('\n');
                    break;
                case 2:
                    sb.append(generateFunDecl(depth)).append('\n');
                    break;
                case 3:
                    sb.append(generateFunDef(depth, 0)).append('\n');
                    break;
                case 4:
                    assert false;
                    return null;
            }
        }

        return sb.toString();
    }

    @ParameterizedTest
    @ValueSource(ints = {1, 2, 3, 4, 5, 6, 7, 8, 9})
    void correctlyParsingGeneratedProgramGivenSeed(int seed){
        RANDOM.setSeed(seed);
        String programContent = generateProgram();

        // save program into a file
        String path = Paths.get(System.getProperty("user.dir"), "src", "test")+ STR."/C-files/parser-generated\{seed}.c";
        File file = new File(path);
        file.getParentFile().mkdirs();
        try(FileWriter fw = new FileWriter(file)){
            fw.write(programContent);
            System.out.println(STR."File saved successfully! to \{path}");
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }

        Scanner scanner;
        try {
            scanner = new Scanner(new File(path));
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }

        Tokeniser t = new Tokeniser(scanner);
        Parser parser = new Parser(t);
        parser.parse();

        // check if everything is good
        assertTrue(!t.hasErrors() && !parser.hasErrors());
    }

    @Test
    void runWithMultipleSeeds(){
        for (int i = 1; i <= 9; i++) {
            correctlyParsingGeneratedProgramGivenSeed(i);
        }
    }


    // helper functions
    private static char[] concatCharArrays(char[] ... arrays){
        int totalLength = 0;
        for (var t: arrays){
            totalLength += t.length;
        }
        var result = new char[totalLength];
        int totalLengthTemp = 0;
        for (var t: arrays){
            System.arraycopy(t, 0, result, totalLengthTemp, t.length);
            totalLengthTemp += t.length;
        }
        return result;
    }
    public static char[] appendToCharArray(char[] base, char... extra){
        char[] combined = new char[base.length + extra.length];
        System.arraycopy(base, 0, combined, 0, base.length);
        System.arraycopy(extra, 0, combined, base.length, extra.length); // Copy extraElements
        return combined;
    }
    private static Token newToken(Token.Category category, String data){
        return new Token(category, data, 0, 0);
    }
    private static boolean compareTokens(Token t1, Token t2){
        return t1.category == t2.category && t1.data.equals(t2.data);
    }

}
