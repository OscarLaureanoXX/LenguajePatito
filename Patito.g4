grammar Patito;
/*
 * Parser Rules
 */
programa    : 'program' ID ';' (varz)? bloque ;
varz        : 'var'(ID (','ID)* ':' TIPO ';')+ ;
bloque      : '{' estatuto* '}' ;
estatuto    : (asignacion | condicion | escritura) ;
asignacion  : ID '=' expresion ';' ;
condicion   : 'if (' expresion ')' bloque ('else'bloque)? ;
escritura   : 'print (' (expresion | 'cte.string') (','expresion | 'cte.string')* ');' ;
expresion   : exp (('>'|'<'|'<>')exp)? ;
exp         : termino (('+'|'-') termino)* ;
termino     : factor (('*'|'/') factor)* ;
factor      : ('('expresion')' | ('+'|'-')?VARCTE);

WS : [ \t\r\n]+ -> skip ;

/*
 * Lexer Rules
 */

 TIPO        : 'int' | 'float' ;
 VARCTE      : 'id' | 'ctel' | 'ctef' ;
 ID          : ([a-zA-Z])+ ;