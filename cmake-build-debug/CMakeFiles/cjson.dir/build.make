# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\alex\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.4746.93\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\alex\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.4746.93\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\workspace\cl4ws\CJsonDemo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\workspace\cl4ws\CJsonDemo\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cjson.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/cjson.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cjson.dir/flags.make

CMakeFiles/cjson.dir/main.c.obj: CMakeFiles/cjson.dir/flags.make
CMakeFiles/cjson.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\cl4ws\CJsonDemo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cjson.dir/main.c.obj"
	D:\ide\mingw-w64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cjson.dir\main.c.obj -c D:\workspace\cl4ws\CJsonDemo\main.c

CMakeFiles/cjson.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjson.dir/main.c.i"
	D:\ide\mingw-w64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\workspace\cl4ws\CJsonDemo\main.c > CMakeFiles\cjson.dir\main.c.i

CMakeFiles/cjson.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjson.dir/main.c.s"
	D:\ide\mingw-w64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\workspace\cl4ws\CJsonDemo\main.c -o CMakeFiles\cjson.dir\main.c.s

CMakeFiles/cjson.dir/cJSON.c.obj: CMakeFiles/cjson.dir/flags.make
CMakeFiles/cjson.dir/cJSON.c.obj: ../cJSON.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\cl4ws\CJsonDemo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/cjson.dir/cJSON.c.obj"
	D:\ide\mingw-w64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cjson.dir\cJSON.c.obj -c D:\workspace\cl4ws\CJsonDemo\cJSON.c

CMakeFiles/cjson.dir/cJSON.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjson.dir/cJSON.c.i"
	D:\ide\mingw-w64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\workspace\cl4ws\CJsonDemo\cJSON.c > CMakeFiles\cjson.dir\cJSON.c.i

CMakeFiles/cjson.dir/cJSON.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjson.dir/cJSON.c.s"
	D:\ide\mingw-w64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\workspace\cl4ws\CJsonDemo\cJSON.c -o CMakeFiles\cjson.dir\cJSON.c.s

# Object files for target cjson
cjson_OBJECTS = \
"CMakeFiles/cjson.dir/main.c.obj" \
"CMakeFiles/cjson.dir/cJSON.c.obj"

# External object files for target cjson
cjson_EXTERNAL_OBJECTS =

cjson.exe: CMakeFiles/cjson.dir/main.c.obj
cjson.exe: CMakeFiles/cjson.dir/cJSON.c.obj
cjson.exe: CMakeFiles/cjson.dir/build.make
cjson.exe: CMakeFiles/cjson.dir/linklibs.rsp
cjson.exe: CMakeFiles/cjson.dir/objects1.rsp
cjson.exe: CMakeFiles/cjson.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\workspace\cl4ws\CJsonDemo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable cjson.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cjson.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cjson.dir/build: cjson.exe
.PHONY : CMakeFiles/cjson.dir/build

CMakeFiles/cjson.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cjson.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cjson.dir/clean

CMakeFiles/cjson.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\workspace\cl4ws\CJsonDemo D:\workspace\cl4ws\CJsonDemo D:\workspace\cl4ws\CJsonDemo\cmake-build-debug D:\workspace\cl4ws\CJsonDemo\cmake-build-debug D:\workspace\cl4ws\CJsonDemo\cmake-build-debug\CMakeFiles\cjson.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cjson.dir/depend
