import sys
from antlr4 import *
from PatitoLexer import PatitoLexer
from PatitoParser import PatitoParser


def main(argv):
    # Tipo de entrada: Archivo de texto recibido como parametro 
    input = FileStream(argv[1])
    lexer = PatitoLexer(input)
    stream = CommonTokenStream(lexer)
    parser = PatitoParser(stream)
    # Nombre de la primer regla de la gramática
    tree = parser.programa()
    # Imprimiendo el árbol
    print(tree.toStringTree(recog=parser))

if __name__ == '__main__':
    main(sys.argv)