# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/Press_TheFurry/Projects/SokolTriangle

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/Press_TheFurry/Projects/SokolTriangle/build

# Include any dependencies generated for this target.
include CMakeFiles/Triangulo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Triangulo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Triangulo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Triangulo.dir/flags.make

CMakeFiles/Triangulo.dir/src/main.cpp.o: CMakeFiles/Triangulo.dir/flags.make
CMakeFiles/Triangulo.dir/src/main.cpp.o: /home/Press_TheFurry/Projects/SokolTriangle/src/main.cpp
CMakeFiles/Triangulo.dir/src/main.cpp.o: CMakeFiles/Triangulo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Press_TheFurry/Projects/SokolTriangle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Triangulo.dir/src/main.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Triangulo.dir/src/main.cpp.o -MF CMakeFiles/Triangulo.dir/src/main.cpp.o.d -o CMakeFiles/Triangulo.dir/src/main.cpp.o -c /home/Press_TheFurry/Projects/SokolTriangle/src/main.cpp

CMakeFiles/Triangulo.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Triangulo.dir/src/main.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Press_TheFurry/Projects/SokolTriangle/src/main.cpp > CMakeFiles/Triangulo.dir/src/main.cpp.i

CMakeFiles/Triangulo.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Triangulo.dir/src/main.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Press_TheFurry/Projects/SokolTriangle/src/main.cpp -o CMakeFiles/Triangulo.dir/src/main.cpp.s

# Object files for target Triangulo
Triangulo_OBJECTS = \
"CMakeFiles/Triangulo.dir/src/main.cpp.o"

# External object files for target Triangulo
Triangulo_EXTERNAL_OBJECTS =

bin/Triangulo: CMakeFiles/Triangulo.dir/src/main.cpp.o
bin/Triangulo: CMakeFiles/Triangulo.dir/build.make
bin/Triangulo: /usr/lib/libglfw.so.3.4
bin/Triangulo: CMakeFiles/Triangulo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/Press_TheFurry/Projects/SokolTriangle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/Triangulo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Triangulo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Triangulo.dir/build: bin/Triangulo
.PHONY : CMakeFiles/Triangulo.dir/build

CMakeFiles/Triangulo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Triangulo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Triangulo.dir/clean

CMakeFiles/Triangulo.dir/depend:
	cd /home/Press_TheFurry/Projects/SokolTriangle/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/Press_TheFurry/Projects/SokolTriangle /home/Press_TheFurry/Projects/SokolTriangle /home/Press_TheFurry/Projects/SokolTriangle/build /home/Press_TheFurry/Projects/SokolTriangle/build /home/Press_TheFurry/Projects/SokolTriangle/build/CMakeFiles/Triangulo.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Triangulo.dir/depend

