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
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion3.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\C\DAA_ConvexHull

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\C\DAA_ConvexHull\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/DAA_ConvexHull.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DAA_ConvexHull.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DAA_ConvexHull.dir/flags.make

CMakeFiles/DAA_ConvexHull.dir/main.cpp.obj: CMakeFiles/DAA_ConvexHull.dir/flags.make
CMakeFiles/DAA_ConvexHull.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\C\DAA_ConvexHull\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DAA_ConvexHull.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\DAA_ConvexHull.dir\main.cpp.obj -c D:\C\DAA_ConvexHull\main.cpp

CMakeFiles/DAA_ConvexHull.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DAA_ConvexHull.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\C\DAA_ConvexHull\main.cpp > CMakeFiles\DAA_ConvexHull.dir\main.cpp.i

CMakeFiles/DAA_ConvexHull.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DAA_ConvexHull.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\C\DAA_ConvexHull\main.cpp -o CMakeFiles\DAA_ConvexHull.dir\main.cpp.s

# Object files for target DAA_ConvexHull
DAA_ConvexHull_OBJECTS = \
"CMakeFiles/DAA_ConvexHull.dir/main.cpp.obj"

# External object files for target DAA_ConvexHull
DAA_ConvexHull_EXTERNAL_OBJECTS =

DAA_ConvexHull.exe: CMakeFiles/DAA_ConvexHull.dir/main.cpp.obj
DAA_ConvexHull.exe: CMakeFiles/DAA_ConvexHull.dir/build.make
DAA_ConvexHull.exe: CMakeFiles/DAA_ConvexHull.dir/linklibs.rsp
DAA_ConvexHull.exe: CMakeFiles/DAA_ConvexHull.dir/objects1.rsp
DAA_ConvexHull.exe: CMakeFiles/DAA_ConvexHull.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\C\DAA_ConvexHull\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DAA_ConvexHull.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\DAA_ConvexHull.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DAA_ConvexHull.dir/build: DAA_ConvexHull.exe

.PHONY : CMakeFiles/DAA_ConvexHull.dir/build

CMakeFiles/DAA_ConvexHull.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\DAA_ConvexHull.dir\cmake_clean.cmake
.PHONY : CMakeFiles/DAA_ConvexHull.dir/clean

CMakeFiles/DAA_ConvexHull.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\C\DAA_ConvexHull D:\C\DAA_ConvexHull D:\C\DAA_ConvexHull\cmake-build-debug D:\C\DAA_ConvexHull\cmake-build-debug D:\C\DAA_ConvexHull\cmake-build-debug\CMakeFiles\DAA_ConvexHull.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DAA_ConvexHull.dir/depend
