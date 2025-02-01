package lexer;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import static org.junit.jupiter.api.Assertions.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;


class TokeniserTest {
    // needed consts for program
    private static Random RANDOM = new Random(90);
    private static final int MAX_COMMENT_LINE_LENGTH = 50;
    private static final int MAX_IDENTIFIER_LENGTH = 10;
    private static final int MAX_SPACES = 4;
    private static final int MAX_INT_LITERAL_LENGTH = 7;
    private static final int MAX_STRING_LITERAL_LENGTH = 20;
    private static final int MAX_NBR_TOKENS = 500;

    // Building Blocks
    private static final char[] LOWER_CASE_ALPHA = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final char[] UPPER_CASE_ALPHA = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    private static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    private static final char[] SPECIAL_CHAR_WITHOUT_QUOTES = {'`', '~', '@', '!', '$', '#', '^', '*', '%', '&', '(', ')', '[', ']', '{', '}', '<', '>', '+', '=', '_', '-', '|', '/', ';', ':', ',', '.', '?'};
    private static final char[] ESCAPED_CHAR = {'\u0007', '\b', '\n', '\r', '\t', '\\', '\'', '\"', '\0'};
    private static final String[] ESCAPED_CHAR_STRING = {"\\a", "\\b", "\\n", "\\r", "\\t", "\\\\", "\\'", "\\\"", "\\0"};

    // Categories
    private static final String[] KEYWORDS = {"if", "else", "while", "return", "struct", "sizeof", "continue", "break"};
    private static final String[] TYPES = {"int", "void", "char"};

    private static final char[] IDENTIFIER_FIRST_CHAR =  appendToCharArray(concatCharArrays(LOWER_CASE_ALPHA, UPPER_CASE_ALPHA), '_');
    private static final char[] IDENTIFIER_REST_CHAR = appendToCharArray(concatCharArrays(LOWER_CASE_ALPHA, UPPER_CASE_ALPHA, DIGITS), '_');
    private static final char[] STRING_LITERAL_CHAR_WITHOUT_ESCAPED = appendToCharArray(concatCharArrays(LOWER_CASE_ALPHA, UPPER_CASE_ALPHA, DIGITS, SPECIAL_CHAR_WITHOUT_QUOTES), ' ', '\'');
    private static final char[] CHAR_LITERAL_CHAR_WITHOUT_ESCAPED = appendToCharArray(concatCharArrays(LOWER_CASE_ALPHA, UPPER_CASE_ALPHA, DIGITS, SPECIAL_CHAR_WITHOUT_QUOTES), ' ', '\"');
    private static final char[] COMMENT_CHAR = concatCharArrays(IDENTIFIER_REST_CHAR);

    // expected tokens buffer
    private ArrayList<Token> buffer = new ArrayList<>();

    private String generateIdentifier(int length){
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
        buffer.add(newToken(Token.Category.IDENTIFIER, s));
        return s;
    }

    private String generateComments(int nbrLines, boolean usingSingleLineComments){
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

    private String generateIntLiteral(){
        StringBuilder sb = new StringBuilder();
        for(int i = 0; i < MAX_INT_LITERAL_LENGTH; ++i){
            sb.append(DIGITS[RANDOM.nextInt(DIGITS.length)]);
        }
        String s = sb.toString();
        buffer.add(newToken(Token.Category.INT_LITERAL, s));
        return s;
    }

    private String generateStringLiteral(int length){
        StringBuilder s = new StringBuilder();
        StringBuilder data = new StringBuilder();
        for(int i = 0; i < length; ++i){
            boolean useEscapedChar = RANDOM.nextBoolean();
            if (useEscapedChar){
                int index = RANDOM.nextInt(ESCAPED_CHAR_STRING.length);
                s.append(ESCAPED_CHAR_STRING[index]);
                data.append(ESCAPED_CHAR[index]);
            } else {
                int index = RANDOM.nextInt(STRING_LITERAL_CHAR_WITHOUT_ESCAPED.length);
                s.append(STRING_LITERAL_CHAR_WITHOUT_ESCAPED[index]);
                data.append(STRING_LITERAL_CHAR_WITHOUT_ESCAPED[index]);
            }
        }
        buffer.add(newToken(Token.Category.STRING_LITERAL, data.toString()));
        return '"' + s.toString() + '"';
    }

    private String generateInclude(){
        StringBuilder sb = new StringBuilder();
        sb.append("#include ");
        buffer.add(newToken(Token.Category.INCLUDE, ""));
        sb.append(generateStringLiteral(10));
        return sb.toString();
    }

    private String generateCharLiteral(){
       boolean useEscapedChar = RANDOM.nextBoolean();
       if(useEscapedChar){
           int index = RANDOM.nextInt(ESCAPED_CHAR.length);
           buffer.add(newToken(Token.Category.CHAR_LITERAL, String.valueOf(ESCAPED_CHAR[index])));
           return '\'' + ESCAPED_CHAR_STRING[index] + '\'';
       } else {
           int index = RANDOM.nextInt(CHAR_LITERAL_CHAR_WITHOUT_ESCAPED.length);
           buffer.add(newToken(Token.Category.CHAR_LITERAL, String.valueOf(CHAR_LITERAL_CHAR_WITHOUT_ESCAPED[index])));
           return '\'' + String.valueOf(CHAR_LITERAL_CHAR_WITHOUT_ESCAPED[index]) + '\'';
       }
    }

    private String generateDelimiter(){
        int index = RANDOM.nextInt(8);
        return switch (index) {
            case 0 -> {
                buffer.add(newToken(Token.Category.LBRA, ""));
                yield "{";
            }
            case 1 -> {
                buffer.add(newToken(Token.Category.RBRA, ""));
                yield "}";
            }
            case 2 -> {
                buffer.add(newToken(Token.Category.LPAR, ""));
                yield "(";
            }
            case 3 -> {
                buffer.add(newToken(Token.Category.RPAR, ""));
                yield ")";
            }
            case 4 -> {
                buffer.add(newToken(Token.Category.LSBR, ""));
                yield "[";
            }
            case 5 -> {
                buffer.add(newToken(Token.Category.RSBR, ""));
                yield "]";
            }
            case 6 -> {
                buffer.add(newToken(Token.Category.SC, ""));
                yield ";";
            }
            case 7 -> {
                buffer.add(newToken(Token.Category.COMMA, ""));
                yield ",";
            }
            default -> {
                assert (false); // unreachable
                yield null;
            }
        };
    }

    private String generateOther(char lastChar){
        int index = RANDOM.nextInt(14);
        switch (index){
            case 0:
                if (lastChar == '=' || lastChar == '>' || lastChar == '<'){
                    return generateOther(lastChar);
                }
                buffer.add(newToken(Token.Category.ASSIGN, ""));
                return "=";
            case 1:
                if (lastChar == '=' || lastChar == '>' || lastChar == '<'){
                    return generateOther(lastChar);
                }
                buffer.add(newToken(Token.Category.EQ, ""));
                return "==";
            case 2:
                buffer.add(newToken(Token.Category.NE, ""));
                return "!=";
            case 3:
                buffer.add(newToken(Token.Category.LT, ""));
                return "<";
            case 4:
                buffer.add(newToken(Token.Category.GT, ""));
                return ">";
            case 5:
                buffer.add(newToken(Token.Category.LE, ""));
                return "<=";
            case 6:
                buffer.add(newToken(Token.Category.GE, ""));
                return ">=";
            case 7:
                buffer.add(newToken(Token.Category.PLUS, ""));
                return "+";
            case 8:
                buffer.add(newToken(Token.Category.MINUS, ""));
                return "-";
            case 9:
                if (lastChar == '/'){
                    return generateOther(lastChar);
                }
                buffer.add(newToken(Token.Category.ASTERISK, ""));
                return "*";
            case 10:
                if (lastChar == '/'){
                    return generateOther(lastChar);
                }
                buffer.add(newToken(Token.Category.DIV, ""));
                return "/";
            case 11:
                buffer.add(newToken(Token.Category.REM, ""));
                return "%";
            case 12:
                if (lastChar == '&'){
                    return generateOther(lastChar);
                }
                buffer.add(newToken(Token.Category.AND, ""));
                return "&";
            case 13:
                buffer.add(newToken(Token.Category.DOT, ""));
                return ".";
            default:
                assert(false);
                return null;
        }
    }

    @ParameterizedTest
    @ValueSource(ints = {1, 2, 3, 4, 5, 6, 7, 8, 9})
    void correctlyLexingGeneratedProgramGivenSeed(int seed) {
        RANDOM.setSeed(seed);
        //flush the buffer
        buffer = new ArrayList<>();
        // generate program
        StringBuilder sb = new StringBuilder();
        sb.append(generateInclude());
        sb.append('\n');
        sb.append(generateInclude());
        sb.append('\n');
        sb.append(generateComments(4, true));
        sb.append('\n');

        for (int i = 0; i < MAX_NBR_TOKENS - 1; i++) {
            if(i % 10 == 0){
                sb.append('\n');
            }
            int index = RANDOM.nextInt(6);
            switch (index){
                case 0:
                    sb.append(generateIdentifier(MAX_IDENTIFIER_LENGTH));
                    sb.append(" ".repeat(RANDOM.nextInt(1, MAX_SPACES)));
                    break;
                case 1:
                    sb.append(generateIntLiteral());
                    sb.append(" ".repeat(RANDOM.nextInt(1, MAX_SPACES)));
                    break;
                case 2:
                    sb.append(generateStringLiteral(MAX_STRING_LITERAL_LENGTH));
                    sb.append(" ".repeat(RANDOM.nextInt(1, MAX_SPACES)));
                    break;
                case 3:
                    sb.append(generateCharLiteral());
                    sb.append(" ".repeat(RANDOM.nextInt(1, MAX_SPACES)));
                    break;
                case 4:
                    sb.append(generateDelimiter());
                    break;
                case 5:
                    sb.append(generateOther(sb.charAt(sb.length() - 1)));
                    break;
                default:
                    assert false;
            }

        }
        buffer.add(newToken(Token.Category.EOF, ""));

        String path = Paths.get(System.getProperty("user.dir"), "src", "test")+ STR."/C-files/lexer-generated\{seed}.txt";
        File file = new File(path);
        file.getParentFile().mkdirs();
        try(FileWriter fw = new FileWriter(file)){
            fw.write(sb.toString());
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
        for (var token: buffer){
            var temp = t.nextToken();
            assertTrue(compareTokens(token, temp));
        }
    }

    @Test
    void runWithMultipleSeeds(){
        for (int i = 1; i <= 9; i++) {
            correctlyLexingGeneratedProgramGivenSeed(i);
        }
    }





    // Helper Functions
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
