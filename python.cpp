/*
    identity.cpp

    Identity copy
*/

#include <iostream>
#include <fstream>
#include "PythonLexer.h"
#include <unordered_map>

int main(int argc, char* argv[]) {

    // setup input
    std::ifstream file(argv[1]);
    antlr4::ANTLRInputStream input(file);

    // setup lexer
    PythonLexer lexer(&input);
    antlr4::BufferedTokenStream tokens(&lexer);

    // count tokens
    std::unordered_map<int, int> tokenMap;
    int count = 0;
    while (true) {

        if (tokens.LA(1) == PythonLexer::EOF)
            break;

        ++tokenMap[tokens.LA(1)];

        tokens.consume();
    }

    // output table of tokens
    auto vocab = lexer.getVocabulary();
    std::cout << "\n|Symbolic|Literal|Count|\n";
    std::cout << "|---|---|---|\n";
    for(const auto& tokenCounter : tokenMap) {
        std::cout << "| " << vocab.getSymbolicName(tokenCounter.first) << " | " << vocab.getLiteralName(tokenCounter.first)<< " | " << tokenCounter.second << " |\n";
    }

    return 0;
}
