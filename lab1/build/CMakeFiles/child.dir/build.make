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
CMAKE_SOURCE_DIR = /mnt/c/Users/Kirill/OS/lab1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Kirill/OS/lab1/build

# Include any dependencies generated for this target.
include CMakeFiles/child.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/child.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/child.dir/flags.make

CMakeFiles/child.dir/src/child.cpp.o: CMakeFiles/child.dir/flags.make
CMakeFiles/child.dir/src/child.cpp.o: ../src/child.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Kirill/OS/lab1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/child.dir/src/child.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/child.dir/src/child.cpp.o -c /mnt/c/Users/Kirill/OS/lab1/src/child.cpp

CMakeFiles/child.dir/src/child.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/child.dir/src/child.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Kirill/OS/lab1/src/child.cpp > CMakeFiles/child.dir/src/child.cpp.i

CMakeFiles/child.dir/src/child.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/child.dir/src/child.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Kirill/OS/lab1/src/child.cpp -o CMakeFiles/child.dir/src/child.cpp.s

CMakeFiles/child.dir/src/utils.cpp.o: CMakeFiles/child.dir/flags.make
CMakeFiles/child.dir/src/utils.cpp.o: ../src/utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Kirill/OS/lab1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/child.dir/src/utils.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/child.dir/src/utils.cpp.o -c /mnt/c/Users/Kirill/OS/lab1/src/utils.cpp

CMakeFiles/child.dir/src/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/child.dir/src/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Kirill/OS/lab1/src/utils.cpp > CMakeFiles/child.dir/src/utils.cpp.i

CMakeFiles/child.dir/src/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/child.dir/src/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Kirill/OS/lab1/src/utils.cpp -o CMakeFiles/child.dir/src/utils.cpp.s

# Object files for target child
child_OBJECTS = \
"CMakeFiles/child.dir/src/child.cpp.o" \
"CMakeFiles/child.dir/src/utils.cpp.o"

# External object files for target child
child_EXTERNAL_OBJECTS =

child: CMakeFiles/child.dir/src/child.cpp.o
child: CMakeFiles/child.dir/src/utils.cpp.o
child: CMakeFiles/child.dir/build.make
child: CMakeFiles/child.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Kirill/OS/lab1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable child"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/child.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/child.dir/build: child

.PHONY : CMakeFiles/child.dir/build

CMakeFiles/child.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/child.dir/cmake_clean.cmake
.PHONY : CMakeFiles/child.dir/clean

CMakeFiles/child.dir/depend:
	cd /mnt/c/Users/Kirill/OS/lab1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Kirill/OS/lab1 /mnt/c/Users/Kirill/OS/lab1 /mnt/c/Users/Kirill/OS/lab1/build /mnt/c/Users/Kirill/OS/lab1/build /mnt/c/Users/Kirill/OS/lab1/build/CMakeFiles/child.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/child.dir/depend

