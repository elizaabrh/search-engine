# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/d/computer/Documents/GitHub/search-engine/crawler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/computer/Documents/GitHub/search-engine/crawler/build

# Include any dependencies generated for this target.
include parser/CMakeFiles/parser.dir/depend.make

# Include the progress variables for this target.
include parser/CMakeFiles/parser.dir/progress.make

# Include the compile flags for this target's objects.
include parser/CMakeFiles/parser.dir/flags.make

parser/CMakeFiles/parser.dir/parser.cpp.o: parser/CMakeFiles/parser.dir/flags.make
parser/CMakeFiles/parser.dir/parser.cpp.o: ../parser/parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/computer/Documents/GitHub/search-engine/crawler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object parser/CMakeFiles/parser.dir/parser.cpp.o"
	cd /mnt/d/computer/Documents/GitHub/search-engine/crawler/build/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/parser.cpp.o -c /mnt/d/computer/Documents/GitHub/search-engine/crawler/parser/parser.cpp

parser/CMakeFiles/parser.dir/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/parser.cpp.i"
	cd /mnt/d/computer/Documents/GitHub/search-engine/crawler/build/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/computer/Documents/GitHub/search-engine/crawler/parser/parser.cpp > CMakeFiles/parser.dir/parser.cpp.i

parser/CMakeFiles/parser.dir/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/parser.cpp.s"
	cd /mnt/d/computer/Documents/GitHub/search-engine/crawler/build/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/computer/Documents/GitHub/search-engine/crawler/parser/parser.cpp -o CMakeFiles/parser.dir/parser.cpp.s

# Object files for target parser
parser_OBJECTS = \
"CMakeFiles/parser.dir/parser.cpp.o"

# External object files for target parser
parser_EXTERNAL_OBJECTS =

parser/libparser.a: parser/CMakeFiles/parser.dir/parser.cpp.o
parser/libparser.a: parser/CMakeFiles/parser.dir/build.make
parser/libparser.a: parser/CMakeFiles/parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/computer/Documents/GitHub/search-engine/crawler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libparser.a"
	cd /mnt/d/computer/Documents/GitHub/search-engine/crawler/build/parser && $(CMAKE_COMMAND) -P CMakeFiles/parser.dir/cmake_clean_target.cmake
	cd /mnt/d/computer/Documents/GitHub/search-engine/crawler/build/parser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
parser/CMakeFiles/parser.dir/build: parser/libparser.a

.PHONY : parser/CMakeFiles/parser.dir/build

parser/CMakeFiles/parser.dir/clean:
	cd /mnt/d/computer/Documents/GitHub/search-engine/crawler/build/parser && $(CMAKE_COMMAND) -P CMakeFiles/parser.dir/cmake_clean.cmake
.PHONY : parser/CMakeFiles/parser.dir/clean

parser/CMakeFiles/parser.dir/depend:
	cd /mnt/d/computer/Documents/GitHub/search-engine/crawler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/computer/Documents/GitHub/search-engine/crawler /mnt/d/computer/Documents/GitHub/search-engine/crawler/parser /mnt/d/computer/Documents/GitHub/search-engine/crawler/build /mnt/d/computer/Documents/GitHub/search-engine/crawler/build/parser /mnt/d/computer/Documents/GitHub/search-engine/crawler/build/parser/CMakeFiles/parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : parser/CMakeFiles/parser.dir/depend

