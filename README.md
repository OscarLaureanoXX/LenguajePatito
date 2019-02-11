# LenguajePatito
Lenguaje patito generado con Antlr4 y Python3

Antlr4 y Python3

Se escribió la gramática para el ejercicio en el archivo
"Patito.g4" que se utilizó para generar el lexer, listener
parser, interp, tokens, lexer.interp y lexer.tokens en Python3. 
Esto se realizó con el siguiente comando:

antlr4 -Dlanguage=Python3 Patito.g4

Posteriormente se escribió el programa "Patito.py"  el cual toma 
la primer línea de un archivo de texto de entrada y la evalúa, 
en caso de estar bien escrita mostrará el árbol de derivación y
en caso de estar mal mostrará los errores que presenta la linea
ingresada. Para ejecutar se debe utilizar el siguiente comando:

python Patito.py EjemploEntrada.txt


Las pruebas realizadas fueron las siguientes:

Entrada: program oscar; var perro: int; { perro = ctef ;}
Salida :    (programa program oscar ; (varz var perro : int ;) (bloque { (estatuto (asignacion perro = (expresion (exp (termino (factor ctef)))) ;)) }))

Entrada: program oscar; var perro: int; {}
Salida :    (programa program oscar ; (varz var perro : int ;) (bloque { }))

Entrada: program oscar; {}
Salida :    (programa program oscar ; (bloque { }))

Entrada: program oscar; var perro: int; { perro = ctef ;
Salida :    line 2:0 extraneous input 'program' expecting {'}', 'if (', 'print (', ID}
            line 2:13 mismatched input ';' expecting '='
            line 2:24 mismatched input ':' expecting '='
            (programa program oscar ; (varz var perro : int ;) (bloque { (estatuto (asignacion perro = (expresion (exp (termino (factor ctef)))) ;)) program (estatuto (asignacion oscar ; var)) (estatuto (asignacion perro : int ; {)) }))
