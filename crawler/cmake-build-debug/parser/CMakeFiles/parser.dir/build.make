# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "F:\Program Files\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "F:\Program Files\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\computer\Documents\GitHub\search-engine\crawler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug

# Include any dependencies generated for this target.
include parser/CMakeFiles/parser.dir/depend.make

# Include the progress variables for this target.
include parser/CMakeFiles/parser.dir/progress.make

# Include the compile flags for this target's objects.
include parser/CMakeFiles/parser.dir/flags.make

parser/CMakeFiles/parser.dir/parser.cpp.obj: parser/CMakeFiles/parser.dir/flags.make
parser/CMakeFiles/parser.dir/parser.cpp.obj: ../parser/parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object parser/CMakeFiles/parser.dir/parser.cpp.obj"
	cd /d D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\parser && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\parser.dir\parser.cpp.obj -c D:\computer\Documents\GitHub\search-engine\crawler\parser\parser.cpp

parser/CMakeFiles/parser.dir/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/parser.cpp.i"
	cd /d D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\parser && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\computer\Documents\GitHub\search-engine\crawler\parser\parser.cpp > CMakeFiles\parser.dir\parser.cpp.i

parser/CMakeFiles/parser.dir/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/parser.cpp.s"
	cd /d D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\parser && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\computer\Documents\GitHub\search-engine\crawler\parser\parser.cpp -o CMakeFiles\parser.dir\parser.cpp.s

# Object files for target parser
parser_OBJECTS = \
"CMakeFiles/parser.dir/parser.cpp.obj"

# External object files for target parser
parser_EXTERNAL_OBJECTS =

parser/libparser.a: parser/CMakeFiles/parser.dir/parser.cpp.obj
parser/libparser.a: parser/CMakeFiles/parser.dir/build.make
parser/libparser.a: parser/CMakeFiles/parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libparser.a"
	cd /d D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\parser && $(CMAKE_COMMAND) -P CMakeFiles\parser.dir\cmake_clean_target.cmake
	cd /d D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\parser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\parser.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
parser/CMakeFiles/parser.dir/build: parser/libparser.a

.PHONY : parser/CMakeFiles/parser.dir/build

parser/CMakeFiles/parser.dir/clean:
	cd /d D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\parser && $(CMAKE_COMMAND) -P CMakeFiles\parser.dir\cmake_clean.cmake
.PHONY : parser/CMakeFiles/parser.dir/clean

parser/CMakeFiles/parser.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\computer\Documents\GitHub\search-engine\crawler D:\computer\Documents\GitHub\search-engine\crawler\parser D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\parser D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\parser\CMakeFiles\parser.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : parser/CMakeFiles/parser.dir/depend

