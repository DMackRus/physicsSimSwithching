# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /opt/clion-2022.3.3/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /opt/clion-2022.3.3/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dave/catkin_ws/src/autoTOTask

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dave/catkin_ws/src/autoTOTask/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/autoTOTask.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/autoTOTask.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/autoTOTask.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/autoTOTask.dir/flags.make

CMakeFiles/autoTOTask.dir/src/main.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/main.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/main.cpp
CMakeFiles/autoTOTask.dir/src/main.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/autoTOTask.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/main.cpp.o -MF CMakeFiles/autoTOTask.dir/src/main.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/main.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/main.cpp

CMakeFiles/autoTOTask.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/main.cpp > CMakeFiles/autoTOTask.dir/src/main.cpp.i

CMakeFiles/autoTOTask.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/main.cpp -o CMakeFiles/autoTOTask.dir/src/main.cpp.s

CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/physicsSimulators/physicsSimulator.cpp
CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.o -MF CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/physicsSimulators/physicsSimulator.cpp

CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/physicsSimulators/physicsSimulator.cpp > CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.i

CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/physicsSimulators/physicsSimulator.cpp -o CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.s

CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/stdInclude/stdInclude.cpp
CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.o -MF CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/stdInclude/stdInclude.cpp

CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/stdInclude/stdInclude.cpp > CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.i

CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/stdInclude/stdInclude.cpp -o CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.s

CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/physicsSimulators/MuJoCoHelper.cpp
CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.o -MF CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/physicsSimulators/MuJoCoHelper.cpp

CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/physicsSimulators/MuJoCoHelper.cpp > CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.i

CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/physicsSimulators/MuJoCoHelper.cpp -o CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.s

CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/modelTranslator.cpp
CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.o -MF CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/modelTranslator.cpp

CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/modelTranslator.cpp > CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.i

CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/modelTranslator.cpp -o CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.s

CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/visualizer/visualizer.cpp
CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.o -MF CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/visualizer/visualizer.cpp

CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/visualizer/visualizer.cpp > CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.i

CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/visualizer/visualizer.cpp -o CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.s

CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/doublePendulum.cpp
CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.o -MF CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/doublePendulum.cpp

CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/doublePendulum.cpp > CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.i

CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/doublePendulum.cpp -o CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.s

CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/reaching.cpp
CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.o -MF CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/reaching.cpp

CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/reaching.cpp > CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.i

CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/reaching.cpp -o CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.s

CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/twoDPushing.cpp
CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.o -MF CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/twoDPushing.cpp

CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/twoDPushing.cpp > CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.i

CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/modelTranslator/twoDPushing.cpp -o CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.s

CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/differentiator/differentiator.cpp
CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.o -MF CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/differentiator/differentiator.cpp

CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/differentiator/differentiator.cpp > CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.i

CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/differentiator/differentiator.cpp -o CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.s

CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/optimiser/optimiser.cpp
CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.o -MF CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/optimiser/optimiser.cpp

CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/optimiser/optimiser.cpp > CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.i

CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/optimiser/optimiser.cpp -o CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.s

CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/optimiser/interpolated_iLQR.cpp
CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.o -MF CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/optimiser/interpolated_iLQR.cpp

CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/optimiser/interpolated_iLQR.cpp > CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.i

CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/optimiser/interpolated_iLQR.cpp -o CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.s

CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.o: CMakeFiles/autoTOTask.dir/flags.make
CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.o: /home/dave/catkin_ws/src/autoTOTask/src/optimiser/stomp.cpp
CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.o: CMakeFiles/autoTOTask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.o -MF CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.o.d -o CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.o -c /home/dave/catkin_ws/src/autoTOTask/src/optimiser/stomp.cpp

CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dave/catkin_ws/src/autoTOTask/src/optimiser/stomp.cpp > CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.i

CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dave/catkin_ws/src/autoTOTask/src/optimiser/stomp.cpp -o CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.s

# Object files for target autoTOTask
autoTOTask_OBJECTS = \
"CMakeFiles/autoTOTask.dir/src/main.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.o" \
"CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.o"

# External object files for target autoTOTask
autoTOTask_EXTERNAL_OBJECTS =

devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/main.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/physicsSimulators/physicsSimulator.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/stdInclude/stdInclude.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/physicsSimulators/MuJoCoHelper.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/modelTranslator/modelTranslator.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/visualizer/visualizer.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/modelTranslator/doublePendulum.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/modelTranslator/reaching.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/modelTranslator/twoDPushing.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/differentiator/differentiator.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/optimiser/optimiser.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/optimiser/interpolated_iLQR.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/src/optimiser/stomp.cpp.o
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/build.make
devel/lib/autoTOTask/autoTOTask: /opt/ros/noetic/lib/libroscpp.so
devel/lib/autoTOTask/autoTOTask: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/autoTOTask/autoTOTask: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
devel/lib/autoTOTask/autoTOTask: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
devel/lib/autoTOTask/autoTOTask: /opt/ros/noetic/lib/librosconsole.so
devel/lib/autoTOTask/autoTOTask: /opt/ros/noetic/lib/librosconsole_log4cxx.so
devel/lib/autoTOTask/autoTOTask: /opt/ros/noetic/lib/librosconsole_backend_interface.so
devel/lib/autoTOTask/autoTOTask: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/autoTOTask/autoTOTask: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
devel/lib/autoTOTask/autoTOTask: /opt/ros/noetic/lib/libroscpp_serialization.so
devel/lib/autoTOTask/autoTOTask: /opt/ros/noetic/lib/libxmlrpcpp.so
devel/lib/autoTOTask/autoTOTask: /opt/ros/noetic/lib/librostime.so
devel/lib/autoTOTask/autoTOTask: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
devel/lib/autoTOTask/autoTOTask: /opt/ros/noetic/lib/libcpp_common.so
devel/lib/autoTOTask/autoTOTask: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
devel/lib/autoTOTask/autoTOTask: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
devel/lib/autoTOTask/autoTOTask: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/autoTOTask/autoTOTask: /home/dave/catkin_ws/src/mujocoLib/lib/libmujoco.so.2.3.2
devel/lib/autoTOTask/autoTOTask: /usr/lib/x86_64-linux-gnu/libyaml-cpp.so.0.6.2
devel/lib/autoTOTask/autoTOTask: CMakeFiles/autoTOTask.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable devel/lib/autoTOTask/autoTOTask"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/autoTOTask.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/autoTOTask.dir/build: devel/lib/autoTOTask/autoTOTask
.PHONY : CMakeFiles/autoTOTask.dir/build

CMakeFiles/autoTOTask.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/autoTOTask.dir/cmake_clean.cmake
.PHONY : CMakeFiles/autoTOTask.dir/clean

CMakeFiles/autoTOTask.dir/depend:
	cd /home/dave/catkin_ws/src/autoTOTask/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dave/catkin_ws/src/autoTOTask /home/dave/catkin_ws/src/autoTOTask /home/dave/catkin_ws/src/autoTOTask/cmake-build-debug /home/dave/catkin_ws/src/autoTOTask/cmake-build-debug /home/dave/catkin_ws/src/autoTOTask/cmake-build-debug/CMakeFiles/autoTOTask.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/autoTOTask.dir/depend
