package parser;


import lexer.Token;
import lexer.Token.Category;
import lexer.Tokeniser;
import util.CompilerPass;

import java.util.LinkedList;
import java.util.Queue;


/**
 * @author cdubach
 */
public class Parser  extends CompilerPass {

    private Token token;

    private final Queue<Token> buffer = new LinkedList<>();

    private final Tokeniser tokeniser;

    private static final Category FIRST_TYPE[] = {Category.INT, Category.CHAR, Category.STRUCT, Category.VOID};
    private static final Category FIRST_EXP_PRIME[] = {Category.ASSIGN, Category.GT, Category.LT, Category.GE, Category.LE, Category.NE, Category.EQ, Category.PLUS, Category.MINUS, Category.DIV, Category.ASTERISK, Category.REM, Category.LOGOR, Category.LOGAND, Category.LSBR, Category.DOT};
    private static final Category FIRST_EXP[] = {Category.MINUS, Category.PLUS, Category.CHAR_LITERAL, Category.STRING_LITERAL, Category.ASTERISK, Category.AND, Category.SIZEOF, Category.LPAR, Category.IDENTIFIER, Category.INT_LITERAL};



    public Parser(Tokeniser tokeniser) {
        this.tokeniser = tokeniser;
    }

    public void parse() {
        // get the first token
        nextToken();
        parseProgram();
    }



    //private int error = 0;
    private Token lastErrorToken;

    private void error(Category... expected) {

        if (lastErrorToken == token) {
            // skip this error, same token causing trouble
            return;
        }

        StringBuilder sb = new StringBuilder();
        String sep = "";
        for (Category e : expected) {
            sb.append(sep);
            sb.append(e);
            sep = "|";
        }
        String msg = "Parsing error: expected ("+sb+") found ("+token+") at "+token.position;
        System.out.println(msg);

        incError();
        lastErrorToken = token;
    }

    /*
     * Look ahead the i^th element from the stream of token.
     * i should be >= 1
     */
    private Token lookAhead(int i) {
        // ensures the buffer has the element we want to look ahead
        while (buffer.size() < i)
            buffer.add(tokeniser.nextToken());

        int cnt=1;
        for (Token t : buffer) {
            if (cnt == i)
                return t;
            cnt++;
        }

        assert false; // should never reach this
        return tokeniser.nextToken();
    }


    /*
     * Consumes the next token from the tokeniser or the buffer if not empty.
     */
    private void nextToken() {
        if (!buffer.isEmpty())
            token = buffer.remove();
        else
            token = tokeniser.nextToken();
    }

    /*
     * If the current token is equals to the expected one, then skip it, otherwise report an error.
     */
    private Token expect(Category... expected) {
        for (Category e : expected) {
            if (e == token.category) {
                Token ret = token;
                nextToken();
                return ret;
            }
        }
        error(expected);
        return token;
    }

    /*
    * Returns true if the current token is equals to any of the expected ones.
    */
    private boolean accept(Category... expected) {
        for (Category e : expected) {
            if (e == token.category)
                return true;
        }
        return false;
    }


    private void parseProgram() {
        parseIncludes();

        while (accept(FIRST_TYPE)) {
            if (token.category == Category.STRUCT &&
                    lookAhead(1).category == Category.IDENTIFIER &&
                    lookAhead(2).category == Category.LBRA) {
                // parse as (structdecl)
                parseStructDecl();
            }
            else {
                // parse as (fundecl | fundef | vardecl)
                parseType();
                expect(Category.IDENTIFIER);
                if (accept(Category.LPAR)) {
                    // keep parsing as (fundecl | fundef)
                    nextToken();
                    parseParam();
                    expect(Category.RPAR);
                    if (accept(Category.SC)) {
                        // parsed as (fundecl)
                        nextToken();
                    } else {
                        // keep parsing as (fundef)
                        parseBlock();
                    }
                } else {
                    // keep parsing as (vardecl)
                    parseVarDeclWithoutTypeIdent();
                }

            }
        }
        // to be completed ...

        expect(Category.EOF);
    }

    // includes are ignored, so does not need to return an AST node
    private void parseIncludes() {
        while (accept(Category.INCLUDE)) {
            nextToken();
            expect(Category.STRING_LITERAL);
        }
    }

    private void parseType(){
        if (accept(FIRST_TYPE)){
            if (accept(Category.STRUCT)) {
                nextToken();
                expect(Category.IDENTIFIER);
            } else {
                nextToken();
            }
        } else {
            error(FIRST_TYPE);
        }

        while (accept(Category.ASTERISK)){
            nextToken();
        }
    }

    private void parseParam(){
        while (accept(FIRST_TYPE)){
            parseType();
            expect(Category.IDENTIFIER);
            while (accept(Category.LSBR)) {
                nextToken();
                expect(Category.INT_LITERAL);
                expect(Category.RSBR);
            }
            while (accept(Category.COMMA)) {
                nextToken();
                parseType();
                expect(Category.IDENTIFIER);
                while (accept(Category.LSBR)) {
                    nextToken();
                    expect(Category.INT_LITERAL);
                    expect(Category.RSBR);
                }
            }
        }
    }

    private void parseVarDeclWithoutTypeIdent(){
        while (accept(Category.LSBR)) {
            nextToken();
            expect(Category.INT_LITERAL);
            expect(Category.RSBR);
        }
        expect(Category.SC);
    }

    private void parseStructDecl(){
        expect(Category.STRUCT);
        expect(Category.IDENTIFIER);
        expect(Category.LBRA);

        do {
            parseType();
            expect(Category.IDENTIFIER);
            parseVarDeclWithoutTypeIdent();
        } while (!accept(Category.RBRA));

        expect(Category.RBRA);
        expect(Category.SC);
    }

    private void parseExpPrime(){
        if (accept(FIRST_EXP_PRIME)) {
            if (accept(Category.ASSIGN)) {
                nextToken();
                parseExp();
            } else if (accept(Category.LSBR)) {
                nextToken();
                parseExp();
                expect(Category.RSBR);
            } else if (accept(Category.DOT)) {
                nextToken();
                expect(Category.IDENTIFIER);
            } else {
                nextToken();
                parseExp();
            }
            parseExpPrime();
        }
    }

    private void parseExp(){
        if (accept(Category.MINUS, Category.PLUS)) {
            nextToken();
            parseExp();
        } else if (accept(Category.CHAR_LITERAL, Category.STRING_LITERAL)) {
            nextToken();
        } else if (accept(Category.ASTERISK, Category.AND)) {
            nextToken();
            parseExp();
        } else if (accept(Category.SIZEOF)) {
            nextToken();
            expect(Category.LPAR);
            parseType();
            expect(Category.RPAR);
        } else if (accept(Category.LPAR)) {
            nextToken();
            if (accept(FIRST_TYPE)) {
                parseType();
                expect(Category.RPAR);
                parseExp();
            } else {
                parseExp();
                expect(Category.RPAR);
            }
        } else if (accept(Category.IDENTIFIER, Category.INT_LITERAL)) {
            boolean wasIdentifier = accept(Category.IDENTIFIER);
            nextToken();
            if (wasIdentifier && accept(Category.LPAR)) {
                nextToken();
                if (!accept(Category.RPAR)) {
                    parseExp();
                    while (accept(Category.COMMA)) {
                        nextToken();
                        parseExp();
                    }
                }
                expect(Category.RPAR);
            }
        } else {
            error(FIRST_EXP);
        }
        parseExpPrime();
    }

    private void parseStmt(){
        if (accept(Category.LBRA)) {
            parseBlock();
        } else if (accept(Category.WHILE)) {
            nextToken();
            expect(Category.LPAR);
            parseExp();
            expect(Category.RPAR);
            parseStmt();
        } else if (accept(Category.IF)) {
            nextToken();
            expect(Category.LPAR);
            parseExp();
            expect(Category.RPAR);
            parseStmt();
            if (accept(Category.ELSE)) {
                nextToken();
                parseStmt();
            }
        } else if (accept(Category.RETURN)) {
            nextToken();
            if (!accept(Category.SC)) {
                parseExp();
            }
            expect(Category.SC);
        } else if (accept(Category.CONTINUE, Category.BREAK)) {
            nextToken();
            expect(Category.SC);
        } else {
            parseExp();
            expect(Category.SC);
        }
    }

    private void parseBlock(){
        expect(Category.LBRA);
        while (accept(FIRST_TYPE)) {
            // parse vardecl
            parseType();
            expect(Category.IDENTIFIER);
            parseVarDeclWithoutTypeIdent();
        }
        while (!accept(Category.RBRA)) {
            // parse stmt
            parseStmt();
        }

        expect(Category.RBRA);
    }

}
