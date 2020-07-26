#include "finite_auto_tools.hpp"


void String_fa_matcher::determine_alphabet(std::string& text) {
    for (int i=0; i< text.length(); i++){
        if(!std::count(alphabet.begin(), alphabet.end(), text.at(i)))
            alphabet.push_back(text.at(i));
    }
}

/**
 * @param key
 * @param state
 * @return the substring starting a position 0 to position state from key, taking into account the fact that
 * when state == 0, we have epsilon or empty string.
 */
std::string String_fa_matcher::get_substr_state(std::string &key, int state) {
    if (state == 0) // we are dealing epsilon or empty string
        return "";
    else {
        auto end_index = (size_t)state;
        return key.substr(0, end_index);
    }
}

bool String_fa_matcher::is_suffix(std::string &sub, std::string &main) {
    if (sub.empty())
        return true;
    else if (main.substr(main.length()-sub.length(), sub.length()).compare(sub) == 0) //check if main ends with sub
        return true;
    else
        return false;
}

void String_fa_matcher::print_trans_table(std::string& key) {
    std::cout<<"Following is the transition table used to detect pattern P: "<<key<<std::endl;
    std::string table_str("-  ");
    for (char a: alphabet){
        std::string temp;
        temp = a;
        table_str+= temp +"|";
    }
    table_str+="\n";

    for (int i=0; i<=key.length();i++){
        if (i==key.length())
            table_str+= "*"+std::to_string(i)+"  ";
        else
            table_str+= std::to_string(i)+"  ";
        for (int j=0; j<alphabet.size(); j++){
            table_str+= std::to_string(trans_table[i][j])+"|";
        }
        table_str+="\n";
    }
    std::cout<<table_str<<std::endl;
}

/**
 * build the transition table that will be used by the transition function to recognized the pattern of letters
 * in variable key
 * @param key
 * @param alphabet
 */
void String_fa_matcher::build_transition(std::string &key) {
    int length_key = (int)key.length();
    int** trans_table = new int*[length_key+1];
    //[length_key+1][alphabet.size()]; // array containing the transition table

    for (int state = 0; state<=length_key; state++){
        trans_table[state]= new int[alphabet.size()];
        int j = 0;
        for(char a: alphabet){
            int k = std::min(length_key+1, state+2);
            std::string main = get_substr_state(key,state)+a;// represents P_q(a) from the algorithm
            std::string sub_k;
            do{
                k--;
                sub_k = get_substr_state(key, k); // represents P_k from
            }while (!is_suffix(sub_k,main));
            trans_table[state][j] = k;
            j++;
        }
    }

    /*std::string str;
    for (int i=0; i<=length_key; i++){
        str += "state "+ std::to_string(i)+"\t";
        for (int j=0; j<alphabet.size(); j++){
            str += std::to_string(trans_table[i][j])+";";
        }
        str+="\n";
    }
    std::cout<< str << std::endl;*/
    this->trans_table = trans_table;
}

/**
 * @param state
 * @param entry
 * @return the transition state when the automaton is at state 'state' and input 'entry' is received.
 */
int String_fa_matcher::transition(int state, char entry) {
    auto it = std::find(alphabet.begin(), alphabet.end(), entry);
    int index = std::distance(alphabet.begin(), it);
    return this->trans_table[state][index];
}

std::vector<int> String_fa_matcher::find_match(std::string &key, std::string &text) {
    std::vector<int> found_match_indexs;

    int  state = 0; //starting state
    int lenght_key = (int)key.length(); // length of the key/pattern, also represents the last/accept state

    determine_alphabet(text);
    build_transition(key);
    print_trans_table(key);

    bool check = false;
    for (int i=0; i< text.length(); i++){
        state = transition(state, text.at(i)); // calling the transition function
        if (state == lenght_key){
            check = true;
            std::cout<<"Found match at index: "<<i-(lenght_key-1)<<std::endl;
            found_match_indexs.push_back(i-(lenght_key-1));
        }
    }

    if (!check){
        std::cout<<"No match was found :["<<std::endl;
    }
    return found_match_indexs;
}