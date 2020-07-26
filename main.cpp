#include <iostream>
#include "finite_auto_tools.hpp"
#include "test_unit.h"
#include <vector>
#include <string>
#include <cassert>

int main(int argc, char* argv[]){
    //assert(("Please provide a pattern followed by a text as arguments",argc == 3));
    //String_fa_matcher string_fa_matcher;

    //std::string pattern = argv[1];
    //std::string text = argv[2];
    //string_fa_matcher.build_transition(pattern, test_aplha);
    //string_fa_matcher.find_match(pattern, text);
    //std::cout<<"Hello"<<std::endl;

    test_String_fa_matcher();
    return 0;
}