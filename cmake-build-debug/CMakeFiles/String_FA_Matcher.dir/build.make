# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.3.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.3.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Projects\String_Matching_FiniteAutomata

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Projects\String_Matching_FiniteAutomata\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/String_FA_Matcher.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/String_FA_Matcher.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/String_FA_Matcher.dir/flags.make

CMakeFiles/String_FA_Matcher.dir/main.cpp.obj: CMakeFiles/String_FA_Matcher.dir/flags.make
CMakeFiles/String_FA_Matcher.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Projects\String_Matching_FiniteAutomata\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/String_FA_Matcher.dir/main.cpp.obj"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\String_FA_Matcher.dir\main.cpp.obj -c D:\Projects\String_Matching_FiniteAutomata\main.cpp

CMakeFiles/String_FA_Matcher.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/String_FA_Matcher.dir/main.cpp.i"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\String_Matching_FiniteAutomata\main.cpp > CMakeFiles\String_FA_Matcher.dir\main.cpp.i

CMakeFiles/String_FA_Matcher.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/String_FA_Matcher.dir/main.cpp.s"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\String_Matching_FiniteAutomata\main.cpp -o CMakeFiles\String_FA_Matcher.dir\main.cpp.s

CMakeFiles/String_FA_Matcher.dir/finite_auto_tools.cpp.obj: CMakeFiles/String_FA_Matcher.dir/flags.make
CMakeFiles/String_FA_Matcher.dir/finite_auto_tools.cpp.obj: ../finite_auto_tools.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Projects\String_Matching_FiniteAutomata\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/String_FA_Matcher.dir/finite_auto_tools.cpp.obj"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\String_FA_Matcher.dir\finite_auto_tools.cpp.obj -c D:\Projects\String_Matching_FiniteAutomata\finite_auto_tools.cpp

CMakeFiles/String_FA_Matcher.dir/finite_auto_tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/String_FA_Matcher.dir/finite_auto_tools.cpp.i"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\String_Matching_FiniteAutomata\finite_auto_tools.cpp > CMakeFiles\String_FA_Matcher.dir\finite_auto_tools.cpp.i

CMakeFiles/String_FA_Matcher.dir/finite_auto_tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/String_FA_Matcher.dir/finite_auto_tools.cpp.s"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\String_Matching_FiniteAutomata\finite_auto_tools.cpp -o CMakeFiles\String_FA_Matcher.dir\finite_auto_tools.cpp.s

# Object files for target String_FA_Matcher
String_FA_Matcher_OBJECTS = \
"CMakeFiles/String_FA_Matcher.dir/main.cpp.obj" \
"CMakeFiles/String_FA_Matcher.dir/finite_auto_tools.cpp.obj"

# External object files for target String_FA_Matcher
String_FA_Matcher_EXTERNAL_OBJECTS =

String_FA_Matcher.exe: CMakeFiles/String_FA_Matcher.dir/main.cpp.obj
String_FA_Matcher.exe: CMakeFiles/String_FA_Matcher.dir/finite_auto_tools.cpp.obj
String_FA_Matcher.exe: CMakeFiles/String_FA_Matcher.dir/build.make
String_FA_Matcher.exe: CMakeFiles/String_FA_Matcher.dir/linklibs.rsp
String_FA_Matcher.exe: CMakeFiles/String_FA_Matcher.dir/objects1.rsp
String_FA_Matcher.exe: CMakeFiles/String_FA_Matcher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Projects\String_Matching_FiniteAutomata\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable String_FA_Matcher.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\String_FA_Matcher.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/String_FA_Matcher.dir/build: String_FA_Matcher.exe

.PHONY : CMakeFiles/String_FA_Matcher.dir/build

CMakeFiles/String_FA_Matcher.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\String_FA_Matcher.dir\cmake_clean.cmake
.PHONY : CMakeFiles/String_FA_Matcher.dir/clean

CMakeFiles/String_FA_Matcher.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Projects\String_Matching_FiniteAutomata D:\Projects\String_Matching_FiniteAutomata D:\Projects\String_Matching_FiniteAutomata\cmake-build-debug D:\Projects\String_Matching_FiniteAutomata\cmake-build-debug D:\Projects\String_Matching_FiniteAutomata\cmake-build-debug\CMakeFiles\String_FA_Matcher.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/String_FA_Matcher.dir/depend

