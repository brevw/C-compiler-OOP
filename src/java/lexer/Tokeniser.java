package lexer;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Collections;
import java.util.HashMap;

import util.CompilerPass;

/**
 * @author cdubach
 */
public class Tokeniser extends CompilerPass {
    private static final List<Character> SPECIAL_CHARS = Arrays.asList('`', '~', '@', '!', '$', '#', '^', '*', '%', '&', '(', ')', '[', ']', '{', '}', '<', '>', '+', '=', '_', '-', '|', '/', ';', ':', ',', '.', '?', '"', '\'');
    private static final List<Character> ESCAPABLE_CHARS = Arrays.asList('a', 'b', 'n', 'r', 't', '\\', '\'', '"', '0');
    private static final Map<String, Token.Category> KEYWORDS_TYPES_MAPPINGS = Collections.unmodifiableMap(init_KEYWORDS_TYPES_MAPPING());
    private static final Map<Character, Token.Category> SINGLE_CHAR_TOKEN_MAPPINGS = Collections.unmodifiableMap(init_SINGLE_CHAR_TOKEN_MAPPINGS() );


    private final Scanner scanner;


    public Tokeniser(Scanner scanner) {
        this.scanner = scanner;
    }

    private void error(char c, int line, int col) {
        String msg = "Lexing error: unrecognised character ("+c+") at "+line+":"+col;
        System.out.println(msg);
        incError();
    }



    /*
     * To be completed
     */
    public Token nextToken() {

        int line = scanner.getLine();
        int column = scanner.getColumn();

        // Special case end of file
        // handles : Special Tokens
        if (!scanner.hasNext())
            return new Token(Token.Category.EOF, scanner.getLine(), scanner.getColumn());

        // get the next character
        char c = scanner.next();

        // skip white spaces between lexems
        if (Character.isWhitespace(c))
            return nextToken();

        // handle case of types of tokens that are encoded with just one char
        // handles : Assign, Delimiters, Operators, Dot
        if (SINGLE_CHAR_TOKEN_MAPPINGS.containsKey(c)) {
            return new Token(SINGLE_CHAR_TOKEN_MAPPINGS.get(c), line, column);
        }

        // handle case of types of tokens that are encoded using one or two chars
        // handles : Logical Operators, Comparaisons
        switch (c) {
            // Logical Operators
            case '&':
                if (scanner.hasNext() && scanner.peek() == '&') {
                    scanner.next();
                    return new Token(Token.Category.LOGAND, line, column);
                }
            case '|':
                if (scanner.hasNext() && scanner.peek() == '|') {
                    scanner.next();
                    return new Token(Token.Category.LOGOR, line, column);
                } else {
                    error(c, line, column);
                    return new Token(Token.Category.INVALID, line, column);
                }

            // Comparisons
            case '=':
                if (scanner.hasNext() && scanner.peek() == '=') {
                    scanner.next();
                    return new Token(Token.Category.EQ, line, column);
                }
                break; // early exit
            case '!':
                if (scanner.hasNext() && scanner.peek() == '=') {
                    return new Token(Token.Category.NE, line, column);
                } else {
                    error(c, line, column);
                    return new Token(Token.Category.INVALID, line, column);
                }
            case '<':
                if (scanner.hasNext() && scanner.peek() == '=') {
                    scanner.next();
                    return new Token(Token.Category.LE, line, column);
                } else {
                    return new Token(Token.Category.LT, line, column);
                }
            case '>':
                if (scanner.hasNext() && scanner.peek() == '=') {
                    scanner.next();
                    return new Token(Token.Category.GE, line, column);
                } else {
                    return new Token(Token.Category.GT, line, column);
                }
            default:
                break;
        }

        // handles: Literals, Keywords, Types
        if (Character.isDigit(c)) {
            return new Token(Token.Category.INT_LITERAL, readNumber(c), line, column);
        }

        if (isLetter(c) || c == '_') {
            StringBoolPair pair = readIdentifier(c);
            boolean hasUnderscore = pair.second; // optimization
            if (!hasUnderscore && KEYWORDS_TYPES_MAPPINGS.containsKey(pair.first)) {
                return new Token(KEYWORDS_TYPES_MAPPINGS.get(pair.first), line, column);
            } else {
                return new Token(Token.Category.IDENTIFIER, pair.first, line, column);
            }
        }

        if (c == '"') {
            StringBoolPair pair = readTillSpecificChar(c);
            boolean success = pair.second;
            if (success) {
                return new Token(Token.Category.STRING_LITERAL, pair.first, line, column);
            } else {
                error(c, line, column);
                return new Token(Token.Category.INVALID, line, column);
            }
        }

        if (c == '\'') {
            StringBoolPair pair = readChar();
            boolean success = pair.second;
            if (success){
                return new Token(Token.Category.CHAR_LITERAL, pair.first, line, column);
            } else {
                error(c, line, column);
                return new Token(Token.Category.INVALID, line, column);
            }
        }

        // handles: Include
        if (c == '#'){
            StringBoolPair pair = readIdentifier('#');
            if (pair.first == "#include") {
                return new Token(Token.Category.INCLUDE, line, column);
            } else {
                error(c, line, column);
                return new Token(Token.Category.INVALID, line, column);
            }
        }


        // if we reach this point, it means we did not recognise a valid token
        error(c, line, column);
        return new Token(Token.Category.INVALID, line, column);
    }

    // helper function

    // class representing pairs (bool is used to express success of failure)
    private class StringBoolPair{
        final String first;
        final boolean second;
        public StringBoolPair(String first, boolean second){
            this.first = first;
            this.second = second;
        }
    }

    // reads a number
    private String readNumber(char c){
        StringBuilder s = new StringBuilder(String.valueOf(c));
        while (scanner.hasNext() && Character.isDigit(scanner.peek())) {
            s.append(scanner.next());
        }
        return s.toString();
    }

    // is character a letter
    private static boolean isLetter(char c){
        int temp = (int)c;
        return (97 <= temp && temp <= 122)
                || (65 <= temp && temp <= 90);

    }

    // (LowerCaseAlpha | UpperCaseAlpha | Digit |  SpecialChar  | WhiteSpace ' '), EscapedChar are handled alone
    private static boolean isValidCharForLiterals(char c){
        return isLetter(c)
                || Character.isDigit(c)
                || SPECIAL_CHARS.contains(c)
                || c == ' ';
    }

    // read a character from the scanner
    private StringBoolPair readChar(){
        if (scanner.hasNext()) {
            char temp = scanner.next();
            if (temp == '\\'){
                if (scanner.hasNext() && ESCAPABLE_CHARS.contains(scanner.peek())) {
                    return new StringBoolPair(String.valueOf(temp) + scanner.next(), true);
                } else {
                    return new StringBoolPair(String.valueOf(temp), false);
                }
            } else {
                return new StringBoolPair(String.valueOf(temp), true);
            }
        }
        return new StringBoolPair("", false);
    }

    // read valid chars until you hit a specific char
    private StringBoolPair readTillSpecificChar(char c){
        StringBuilder s = new StringBuilder();
        while (scanner.hasNext() && (scanner.peek() == c || scanner.peek() == '\\' || isValidCharForLiterals(scanner.peek()))){
            char temp = scanner.next();
            // check if we hit the end of the string
            if (temp == c) {
                return new StringBoolPair(s.toString(), true);
            }
            s.append(temp);

            // handle escapable chars
            if ( temp == '\\' && (!scanner.hasNext() || !ESCAPABLE_CHARS.contains(scanner.peek())) ) {
                return new StringBoolPair(s.toString(), false);
            } else {
                s.append(scanner.next());
            }
        }
        return new StringBoolPair(s.toString(), false);
    }

    // check for the pattern (Digit | LowerCaseAlpha | UpperCaseAlpha | '_')
    private static boolean isValidIdentifierChar(char c){
        return isLetter(c) || Character.isDigit(c) || c == '_';
    }

    // read an identifier  (LowerCaseAlpha | UpperCaseAlpha | '_') (Digit | LowerCaseAlpha | UpperCaseAlpha | '_')*
    private StringBoolPair readIdentifier(char c){
        StringBuilder s = new StringBuilder(String.valueOf(c));
        boolean hasUndescore = (c == '_');
        while (scanner.hasNext() && isValidIdentifierChar(scanner.peek())){
            if (!hasUndescore && scanner.peek() == '_') {
                hasUndescore = true;
            }
            s.append(scanner.next());
        }
        return new StringBoolPair(s.toString(), hasUndescore);
    }

    // init MAPPINGS for keywords and types
    private static Map<String, Token.Category> init_KEYWORDS_TYPES_MAPPING(){
        Map<String, Token.Category> map = new HashMap<>();
        // Keywords
        map.put("if", Token.Category.IF);
        map.put("else", Token.Category.ELSE);
        map.put("while", Token.Category.WHILE);
        map.put("return", Token.Category.RETURN);
        map.put("struct", Token.Category.STRUCT);
        map.put("sizeof", Token.Category.SIZEOF);
        map.put("continue", Token.Category.CONTINUE);
        map.put("break", Token.Category.BREAK);

        // Types
        map.put("int", Token.Category.INT);
        map.put("void", Token.Category.VOID);
        map.put("char", Token.Category.CHAR);

        return map;
    }

    // mappings for category of tokens that are only identified by one char
    private static Map<Character, Token.Category> init_SINGLE_CHAR_TOKEN_MAPPINGS(){
        Map<Character, Token.Category> map = new HashMap<>();

        // Assign
        map.put('=', Token.Category.ASSIGN);

        // Delimiters
        map.put('{', Token.Category.LBRA);
        map.put('}', Token.Category.RBRA);
        map.put('(', Token.Category.LPAR);
        map.put(')', Token.Category.RPAR);
        map.put('[', Token.Category.LSBR);
        map.put(']', Token.Category.RSBR);
        map.put(';', Token.Category.SC);
        map.put(',', Token.Category.COMMA);

        // Operators
        map.put('+', Token.Category.PLUS);
        map.put('-', Token.Category.MINUS);
        map.put('*', Token.Category.ASTERISK);
        map.put('/', Token.Category.DIV);
        map.put('%', Token.Category.REM);
        map.put('&', Token.Category.AND);

        // Dot
        map.put('.', Token.Category.DOT);

        return map;
    }
}
