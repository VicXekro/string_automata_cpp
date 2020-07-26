#ifndef FINITE_AUTO_TOOLS_HPP
#define FINITE_AUTO_TOOLS_HPP


#include <string>
#include <vector>
#include <iostream>
#include <algorithm>

class String_fa_matcher{
    public:
        String_fa_matcher()= default;
        std::vector<int> find_match(std::string& key, std::string& text);


    private:
        void determine_alphabet(std::string& text); // return the alphabet used by the text
        int transition(int state, char entry); // transition state on given entry using transition table
        bool is_suffix(std::string& sub, std::string& main);//
        void build_transition(std::string& key); // build the transition table
        std::string get_substr_state(std::string& key, int state);//return the substring from key according to the state
        void print_trans_table(std::string& key); //print the transition table

        int** trans_table; // transition table used by the transition function
        std::vector<char> alphabet; //alphabet of the language
};

#endif