lexer grammar PythonLexer;

options {
    language=Cpp;
}

// Keyword
FALSE : 'False';
AWAIT : 'await';
ELSE : 'else';
IMPORT : 'import';
PASS : 'pass';
NONE : 'None';
BREAK : 'break';
EXCEPT : 'except';
IN : 'in';
RAISE : 'raise';
TRUE : 'True';
CLASS : 'class';
FINALLY : 'finally';
IS : 'is';
RETURN : 'return';
AND : 'and';
CONTINUE : 'continue';
FOR : 'for';
LAMBDA : 'lambda';
TRY : 'try';
AS : 'as';
DEF  : 'def ';
FROM : 'from';
NONLOCAL : 'nonlocal';
WHILE : 'while';
ASSERT : 'assert';
DEL : 'del';
GLOBAL : 'global';
NOT  : 'not ';
WITH : 'with';
ASYNC : 'async';
ELIF : 'elif';
IF : 'if';
OR : 'or';
YIELD : 'yield';

// Sections
LPAREN : '(' ;
RPAREN : ')' ;
LCURLY : '{' ;
RCURLY : '}' ;
LBRACKET : '[' ;
RBRACKET : ']' ;

NAME : [a-zA-Z_][a-zA-Z0-9_]* ;

NUMBER : [0-9]+ ;

COMMENT : '#' .*? ('\n')? ;

STRING : ('f')?'\'' .*? '\'' | ('f')?'"' .*? '"' | ('f')?'\'\'\'' .*? '\'\'\'' | ('f')?'"""' .*? '"""';

OPERATORS: '+' | '-' | '*' | '/' | '%' | '**' | '//' | '@' | '&' | '|' | '^' | '~' | '<<' | '>>' | '==' | '!=' |
           '>' | '<' | '>=' | '<=' | '=' | ':=' | '+=' | '-=' | '*=' | '/=' | '%=' | '**=' | '//=' | '@=' | '&=' |
           '|=' | '^=' | '<<=' | '>>=' | ':' | '->' | '.' | ',';

WS : (' ' | '\t' | '\n')+  ;

OTHER : .+?;
