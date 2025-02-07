package parser;


import ast.ArrayType;
import ast.BaseType;
import ast.Block;
import ast.Break;
import ast.Continue;
import ast.Decl;
import ast.Expr;
import ast.ExprStmt;
import ast.FunDecl;
import ast.FunDef;
import ast.If;
import ast.PoInterType;
import ast.Program;
import ast.Return;
import ast.Stmt;
import ast.StructType;
import ast.StructTypeDecl;
import ast.Type;
import ast.VarDecl;
import ast.While;
import lexer.Token;
import lexer.Token.Category;
import lexer.Tokeniser;
import util.CompilerPass;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;


/**
 * @author cdubach
 */
public class Parser extends CompilerPass {

    private Token token;

    private Queue<Token> buffer = new LinkedList<>();

    private final Tokeniser tokeniser;

    private static final Category FIRST_TYPE[] = {Category.INT, Category.CHAR, Category.STRUCT, Category.VOID};
    private static final Category FIRST_EXP_PRIME[] = {Category.ASSIGN, Category.GT, Category.LT, Category.GE, Category.LE, Category.NE, Category.EQ, Category.PLUS, Category.MINUS, Category.DIV, Category.ASTERISK, Category.REM, Category.LOGOR, Category.LOGAND, Category.LSBR, Category.DOT};
    private static final Category FIRST_EXP[] = {Category.MINUS, Category.PLUS, Category.CHAR_LITERAL, Category.STRING_LITERAL, Category.ASTERISK, Category.AND, Category.SIZEOF, Category.LPAR, Category.IDENTIFIER, Category.INT_LITERAL};
    private static final Category FIRST_STMT[] = combine(FIRST_EXP, Category.LBRA, Category.WHILE, Category.IF, Category.RETURN, Category.CONTINUE, Category.BREAK);
    private static final Category FIRST_BLOCK[] = {Category.LBRA};



    public Parser(Tokeniser tokeniser) {
        this.tokeniser = tokeniser;
    }

    public Program parse() {
        // get the first token
        nextToken();

        return parseProgram();
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


    private Program parseProgram() {
        parseIncludes(); // don't care about includes

        List<Decl> decls = new ArrayList<>();

        while (accept(FIRST_TYPE)) {
            if (token.category == Category.STRUCT &&
                    lookAhead(1).category == Category.IDENTIFIER &&
                    lookAhead(2).category == Category.LBRA) {
                // parse as (structdecl)
                decls.add(parseStructDecl());
            }
            else {
                // parse as (fundecl | fundef | vardecl)
                Type type =  parseType();
                Token id = expect(Category.IDENTIFIER);
                if (accept(Category.LPAR)) {
                    // keep parsing as (fundecl | fundef)
                    var argsList = new ArrayList<VarDecl>();
                    nextToken();
                    parseParam(argsList);
                    expect(Category.RPAR);
                    if (accept(Category.SC)) {
                        // parsed as (fundecl)
                        nextToken();
                        decls.add(new FunDecl(type, id.data, argsList));
                    } else if (accept(FIRST_BLOCK)) {
                        // keep parsing as (fundef)
                        decls.add(new FunDef(type, id.data, argsList, parseBlock()));
                    } else {
                        error(Category.SC, Category.LBRA);
                    }
                } else {
                    // keep parsing as (vardecl)
                    decls.add(parseVarDeclWithoutTypeIdent(type, id));
                }

            }
        }

        expect(Category.EOF);
        return new Program(decls);
    }

    // includes are ignored, so does not need to return an AST node
    private void parseIncludes() {
        while (accept(Category.INCLUDE)) {
            nextToken();
            expect(Category.STRING_LITERAL);
        }
    }

    private Type parseType(){
        Type type = BaseType.UNKNOWN;
        if (accept(FIRST_TYPE)){
            if (accept(Category.STRUCT)) {
                nextToken();
                Token id = expect(Category.IDENTIFIER);
                type = new StructType(id.data);
            } else {
                switch (token.category) {
                    case Category.INT:
                        type = BaseType.INT;
                        break;
                    case Category.CHAR:
                        type = BaseType.CHAR;
                        break;
                    case Category.VOID:
                        type = BaseType.VOID;
                    default:
                        break; // unreachable
                }
                nextToken();
            }
        } else {
            error(FIRST_TYPE);
        }

        while (accept(Category.ASTERISK)){
            type = new PoInterType(type);
            nextToken();
        }

        return type;
    }

    private void parseParam(List<VarDecl> argsList){
        Type type;
        Token id;
        ArrayList<Integer> stack = new ArrayList<>();
        if (accept(FIRST_TYPE)){
            type = parseType();
            id = expect(Category.IDENTIFIER);
            while (accept(Category.LSBR)) {
                nextToken();
                Token size = expect(Category.INT_LITERAL);
                if (size.category == Category.INT_LITERAL) {
                    stack.add(Integer.parseInt(size.data));
                } else {
                    type = BaseType.UNKNOWN;
                    stack.clear();
                }
                expect(Category.RSBR);
            }
            for (int i = stack.size() - 1; i >= 0; --i) {
                type = new ArrayType(type, stack.get(i));
            }
            argsList.add(new VarDecl(type, id.data));
            stack.clear();

            while (accept(Category.COMMA)) {
                nextToken();
                type = parseType();
                id = expect(Category.IDENTIFIER);
                while (accept(Category.LSBR)) {
                    nextToken();
                    Token size = expect(Category.INT_LITERAL);
                    if (size.category == Category.INT_LITERAL) {
                        stack.add(Integer.parseInt(size.data));
                    } else {
                        type = BaseType.UNKNOWN;
                        stack.clear();
                    }
                    expect(Category.RSBR);
                }
                for (int i = stack.size() - 1; i >= 0; --i) {
                    type = new ArrayType(type, stack.get(i));
                }
                argsList.add(new VarDecl(type, id.data));
            }
        }
    }

    private VarDecl parseVarDeclWithoutTypeIdent(Type type, Token id){
        ArrayList<Integer> stack = new ArrayList<>();
        while (accept(Category.LSBR)) {
            nextToken();
            Token size = expect(Category.INT_LITERAL);
            if (size.category == Category.INT) {
                stack.add(Integer.parseInt(size.data));
            } else {
                type = BaseType.UNKNOWN;
                stack.clear();
            }
            expect(Category.RSBR);
        }
        for (int i = stack.size() - 1; i >= 0; --i) {
            type = new ArrayType(type, stack.get(i));
        }
        expect(Category.SC);
        return new VarDecl(type, id.data);
    }

    private StructTypeDecl parseStructDecl(){
        expect(Category.STRUCT);
        Token id = expect(Category.IDENTIFIER);
        expect(Category.LBRA);

        var varDecls = new ArrayList<VarDecl>();
        do {
            Type type = parseType();
            Token paramId = expect(Category.IDENTIFIER);
            varDecls.add(parseVarDeclWithoutTypeIdent(type, paramId));
        } while (accept(FIRST_TYPE));

        expect(Category.RBRA);
        expect(Category.SC);
        return new StructTypeDecl(id.data, varDecls);
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

    private Expr parseExp(){
        if (accept(Category.MINUS, Category.PLUS)) {
            nextToken();
            parseExp();
        } else if (accept(Category.CHAR_LITERAL, Category.STRING_LITERAL, Category.INT_LITERAL)) {
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
        } else if (accept(Category.IDENTIFIER)) {
            nextToken();
            if (accept(Category.LPAR)) {
                nextToken();
                if (accept(FIRST_EXP)) {
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
            return null;
        }
        parseExpPrime();
    }

    private Stmt parseStmt(){
        if (accept(FIRST_BLOCK)) {
            return parseBlock();
        } else if (accept(Category.WHILE)) {
            nextToken();
            expect(Category.LPAR);
            Expr expr = parseExp();
            expect(Category.RPAR);
            Stmt stmt = parseStmt();
            return stmt == null ? null : new While(expr, stmt);
        } else if (accept(Category.IF)) {
            nextToken();
            expect(Category.LPAR);
            Expr expr = parseExp();
            expect(Category.RPAR);
            Stmt stmt1 = parseStmt();
            Stmt stmt2 = null;
            if (accept(Category.ELSE)) {
                nextToken();
                stmt2 = parseStmt();
            }
            return stmt1 == null ? null : new If(expr, stmt1, stmt2);
        } else if (accept(Category.RETURN)) {
            nextToken();
            Expr expr = null;
            if (accept(FIRST_EXP)) {
                expr = parseExp();
            }
            expect(Category.SC);
            return new Return(expr);
        } else if (accept(Category.CONTINUE)) {
            nextToken();
            expect(Category.SC);
            return new Continue();
        } else if (accept(Category.BREAK)) {
            nextToken();
            expect(Category.SC);
            return new Break();
        } else if (accept(FIRST_EXP)) {
            Expr expr = parseExp();
            expect(Category.SC);
            return new ExprStmt(expr);
        } else {
            error(FIRST_STMT);
            return null;
        }
    }

    private Block parseBlock(){
        expect(Category.LBRA);
        var varDecls = new ArrayList<VarDecl>();
        var stmts = new ArrayList<Stmt>();
        while (accept(FIRST_TYPE)) {
            // parse vardecl
            Type type = parseType();
            Token id = expect(Category.IDENTIFIER);
            varDecls.add(parseVarDeclWithoutTypeIdent(type, id));
        }
        while (accept(FIRST_STMT)) {
            // parse stmt
            Stmt stmt = parseStmt();
            if (stmt != null) {
                stmts.add(stmt);
            }
        }

        expect(Category.RBRA);
        return new Block(varDecls, stmts);
    }

    private static Category[] combine(Category[] base, Category... extra) {
        Category[] combined = new Category[base.length + extra.length];
        System.arraycopy(base, 0, combined, 0, base.length);
        System.arraycopy(extra, 0, combined, base.length, extra.length); // Copy extraElements
        return combined;
    }
}
