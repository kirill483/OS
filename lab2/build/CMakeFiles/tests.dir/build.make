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
CMAKE_SOURCE_DIR = /mnt/c/Users/Kirill/OS/lab2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Kirill/OS/lab2/build

# Include any dependencies generated for this target.
include CMakeFiles/tests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tests.dir/flags.make

CMakeFiles/tests.dir/tests/tests.cpp.o: CMakeFiles/tests.dir/flags.make
CMakeFiles/tests.dir/tests/tests.cpp.o: ../tests/tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Kirill/OS/lab2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tests.dir/tests/tests.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/tests/tests.cpp.o -c /mnt/c/Users/Kirill/OS/lab2/tests/tests.cpp

CMakeFiles/tests.dir/tests/tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/tests/tests.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Kirill/OS/lab2/tests/tests.cpp > CMakeFiles/tests.dir/tests/tests.cpp.i

CMakeFiles/tests.dir/tests/tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/tests/tests.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Kirill/OS/lab2/tests/tests.cpp -o CMakeFiles/tests.dir/tests/tests.cpp.s

CMakeFiles/tests.dir/src/utils.c.o: CMakeFiles/tests.dir/flags.make
CMakeFiles/tests.dir/src/utils.c.o: ../src/utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Kirill/OS/lab2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/tests.dir/src/utils.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tests.dir/src/utils.c.o   -c /mnt/c/Users/Kirill/OS/lab2/src/utils.c

CMakeFiles/tests.dir/src/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tests.dir/src/utils.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/Kirill/OS/lab2/src/utils.c > CMakeFiles/tests.dir/src/utils.c.i

CMakeFiles/tests.dir/src/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tests.dir/src/utils.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/Kirill/OS/lab2/src/utils.c -o CMakeFiles/tests.dir/src/utils.c.s

CMakeFiles/tests.dir/src/lab2.c.o: CMakeFiles/tests.dir/flags.make
CMakeFiles/tests.dir/src/lab2.c.o: ../src/lab2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Kirill/OS/lab2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/tests.dir/src/lab2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tests.dir/src/lab2.c.o   -c /mnt/c/Users/Kirill/OS/lab2/src/lab2.c

CMakeFiles/tests.dir/src/lab2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tests.dir/src/lab2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/Kirill/OS/lab2/src/lab2.c > CMakeFiles/tests.dir/src/lab2.c.i

CMakeFiles/tests.dir/src/lab2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tests.dir/src/lab2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/Kirill/OS/lab2/src/lab2.c -o CMakeFiles/tests.dir/src/lab2.c.s

# Object files for target tests
tests_OBJECTS = \
"CMakeFiles/tests.dir/tests/tests.cpp.o" \
"CMakeFiles/tests.dir/src/utils.c.o" \
"CMakeFiles/tests.dir/src/lab2.c.o"

# External object files for target tests
tests_EXTERNAL_OBJECTS =

tests: CMakeFiles/tests.dir/tests/tests.cpp.o
tests: CMakeFiles/tests.dir/src/utils.c.o
tests: CMakeFiles/tests.dir/src/lab2.c.o
tests: CMakeFiles/tests.dir/build.make
tests: /usr/lib/x86_64-linux-gnu/libgtest.a
tests: CMakeFiles/tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Kirill/OS/lab2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tests.dir/build: tests

.PHONY : CMakeFiles/tests.dir/build

CMakeFiles/tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tests.dir/clean

CMakeFiles/tests.dir/depend:
	cd /mnt/c/Users/Kirill/OS/lab2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Kirill/OS/lab2 /mnt/c/Users/Kirill/OS/lab2 /mnt/c/Users/Kirill/OS/lab2/build /mnt/c/Users/Kirill/OS/lab2/build /mnt/c/Users/Kirill/OS/lab2/build/CMakeFiles/tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tests.dir/depend

