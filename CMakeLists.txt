cmake_minimum_required(VERSION 3.10)

# set the project name
project(String_FA_Matcher)

# specifying c++ version, used version is c++ 11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# adding executable
add_executable(String_FA_Matcher main.cpp finite_auto_tools.cpp finite_auto_tools.hpp test_unit.h)