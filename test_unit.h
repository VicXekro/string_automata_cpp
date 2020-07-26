//
// Created by asus on 4/5/2020.
//

#ifndef STRING_FA_MATCHER_TEST_UNIT_H
#define STRING_FA_MATCHER_TEST_UNIT_H
void test_String_fa_matcher();

void test_String_fa_matcher(){
    String_fa_matcher string_fa_matcher;

    std::cout<<"****************************************************************************"<<std::endl;
    std::cout<<"****For this series of test, the starting index is considered to be zero****"<<std::endl;
    std::cout<<"****************************************************************************\n"<<std::endl;

    std::cout<<"************************     Test 1     ******************************"<<std::endl;
    std::string pattern_1("aababb");
    std::string text_1("aaababaabaababaab");
    std::cout<< "Pattern: "<< pattern_1<< "; Text: "<<text_1<<std::endl;
    std::vector<int> result =  string_fa_matcher.find_match(pattern_1,text_1);
    if (result.empty())
        std::cout<< "******************    Test 1 Passed    ******************\n" <<std::endl;
    else
        std::cout<< "******************    Test 1 Failed    ******************\n" <<std::endl;

    std::cout<<"************************     Test 2     ******************************"<<std::endl;
    std::string pattern_2("aabab");
    std::string text_2("aaababaabaababaab");
    std::cout<< "Pattern: "<< pattern_2<< "; Text: "<<text_2<<std::endl;
    std::vector<int> result2 =  string_fa_matcher.find_match(pattern_2,text_2);
    std::vector<int> expected_result_2 = {1,9};
    if (result2 == expected_result_2)
        std::cout<< "******************    Test 2 Passed    ******************\n" <<std::endl;
    else
        std::cout<< "******************    Test 2 Failed    ******************\n"  <<std::endl;

    std::cout<<"************************     Test 3     ******************************"<<std::endl;
    std::string pattern_3("ababaca");
    std::string text_3("abababacaba");
    std::cout<< "Pattern: "<< pattern_3<< "; Text: "<<text_3<<std::endl;
    std::vector<int> result3 =  string_fa_matcher.find_match(pattern_3,text_3);
    std::vector<int> expected_result_3 = {2};
    if (result3 == expected_result_3)
        std::cout<< "******************    Test 3 Passed    ******************\n" <<std::endl;
    else
        std::cout<< "******************    Test 3 Failed    ******************\n"  <<std::endl;

    std::cout<<"************************     Custom Test    ******************************"<<std::endl;
    std::cout<<"Do you want to perform a custom test? (y/n): "<<std::endl;
    char choice;
    std::string pattern_c;
    std::string text_c;
    String_fa_matcher custom_string_matcher;
    std::cin>>choice;
    switch(choice) {
        case 'y'  :
        case 'Y'  :
            std::cout<<"Enter pattern: ";
            std::cin>>pattern_c;
            std::cout<<"Enter text: ";
            std::cin>>text_c;
            std::cout<< "Pattern: "<< pattern_c<< "; Text: "<<text_c<<std::endl;
            custom_string_matcher.find_match(pattern_c,text_c);
            break;
        default: //Optional
            std::cout<<"Exit program"<<std::endl;
    }
}
#endif //STRING_FA_MATCHER_TEST_UNIT_H
