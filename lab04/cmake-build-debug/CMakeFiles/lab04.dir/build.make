# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.3.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/lab04.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab04.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab04.dir/flags.make

CMakeFiles/lab04.dir/main.c.obj: CMakeFiles/lab04.dir/flags.make
CMakeFiles/lab04.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab04.dir/main.c.obj"
	C:\mingw-w64\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\lab04.dir\main.c.obj   -c "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\main.c"

CMakeFiles/lab04.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab04.dir/main.c.i"
	C:\mingw-w64\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\main.c" > CMakeFiles\lab04.dir\main.c.i

CMakeFiles/lab04.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab04.dir/main.c.s"
	C:\mingw-w64\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\main.c" -o CMakeFiles\lab04.dir\main.c.s

CMakeFiles/lab04.dir/A01166947_file_copy.c.obj: CMakeFiles/lab04.dir/flags.make
CMakeFiles/lab04.dir/A01166947_file_copy.c.obj: ../A01166947_file_copy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lab04.dir/A01166947_file_copy.c.obj"
	C:\mingw-w64\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\lab04.dir\A01166947_file_copy.c.obj   -c "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\A01166947_file_copy.c"

CMakeFiles/lab04.dir/A01166947_file_copy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab04.dir/A01166947_file_copy.c.i"
	C:\mingw-w64\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\A01166947_file_copy.c" > CMakeFiles\lab04.dir\A01166947_file_copy.c.i

CMakeFiles/lab04.dir/A01166947_file_copy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab04.dir/A01166947_file_copy.c.s"
	C:\mingw-w64\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\A01166947_file_copy.c" -o CMakeFiles\lab04.dir\A01166947_file_copy.c.s

# Object files for target lab04
lab04_OBJECTS = \
"CMakeFiles/lab04.dir/main.c.obj" \
"CMakeFiles/lab04.dir/A01166947_file_copy.c.obj"

# External object files for target lab04
lab04_EXTERNAL_OBJECTS =

lab04.exe: CMakeFiles/lab04.dir/main.c.obj
lab04.exe: CMakeFiles/lab04.dir/A01166947_file_copy.c.obj
lab04.exe: CMakeFiles/lab04.dir/build.make
lab04.exe: CMakeFiles/lab04.dir/linklibs.rsp
lab04.exe: CMakeFiles/lab04.dir/objects1.rsp
lab04.exe: CMakeFiles/lab04.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable lab04.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\lab04.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab04.dir/build: lab04.exe

.PHONY : CMakeFiles/lab04.dir/build

CMakeFiles/lab04.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\lab04.dir\cmake_clean.cmake
.PHONY : CMakeFiles/lab04.dir/clean

CMakeFiles/lab04.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04" "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04" "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\cmake-build-debug" "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\cmake-build-debug" "C:\Users\cragz\OneDrive\Documents\CST\Term 2\COMP 2510\CLionProjects\lab04\cmake-build-debug\CMakeFiles\lab04.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/lab04.dir/depend

