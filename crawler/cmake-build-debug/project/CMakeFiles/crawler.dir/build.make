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
include project/CMakeFiles/crawler.dir/depend.make

# Include the progress variables for this target.
include project/CMakeFiles/crawler.dir/progress.make

# Include the compile flags for this target's objects.
include project/CMakeFiles/crawler.dir/flags.make

project/CMakeFiles/crawler.dir/main.cpp.obj: project/CMakeFiles/crawler.dir/flags.make
project/CMakeFiles/crawler.dir/main.cpp.obj: project/CMakeFiles/crawler.dir/includes_CXX.rsp
project/CMakeFiles/crawler.dir/main.cpp.obj: ../project/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object project/CMakeFiles/crawler.dir/main.cpp.obj"
	cd /d D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\project && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\crawler.dir\main.cpp.obj -c D:\computer\Documents\GitHub\search-engine\crawler\project\main.cpp

project/CMakeFiles/crawler.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crawler.dir/main.cpp.i"
	cd /d D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\project && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\computer\Documents\GitHub\search-engine\crawler\project\main.cpp > CMakeFiles\crawler.dir\main.cpp.i

project/CMakeFiles/crawler.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crawler.dir/main.cpp.s"
	cd /d D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\project && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\computer\Documents\GitHub\search-engine\crawler\project\main.cpp -o CMakeFiles\crawler.dir\main.cpp.s

# Object files for target crawler
crawler_OBJECTS = \
"CMakeFiles/crawler.dir/main.cpp.obj"

# External object files for target crawler
crawler_EXTERNAL_OBJECTS =

project/crawler.exe: project/CMakeFiles/crawler.dir/main.cpp.obj
project/crawler.exe: project/CMakeFiles/crawler.dir/build.make
project/crawler.exe: page-loader/libpage_loader.a
project/crawler.exe: parser/libparser.a
project/crawler.exe: project/CMakeFiles/crawler.dir/linklibs.rsp
project/crawler.exe: project/CMakeFiles/crawler.dir/objects1.rsp
project/crawler.exe: project/CMakeFiles/crawler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable crawler.exe"
	cd /d D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\project && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\crawler.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
project/CMakeFiles/crawler.dir/build: project/crawler.exe

.PHONY : project/CMakeFiles/crawler.dir/build

project/CMakeFiles/crawler.dir/clean:
	cd /d D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\project && $(CMAKE_COMMAND) -P CMakeFiles\crawler.dir\cmake_clean.cmake
.PHONY : project/CMakeFiles/crawler.dir/clean

project/CMakeFiles/crawler.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\computer\Documents\GitHub\search-engine\crawler D:\computer\Documents\GitHub\search-engine\crawler\project D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\project D:\computer\Documents\GitHub\search-engine\crawler\cmake-build-debug\project\CMakeFiles\crawler.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : project/CMakeFiles/crawler.dir/depend

