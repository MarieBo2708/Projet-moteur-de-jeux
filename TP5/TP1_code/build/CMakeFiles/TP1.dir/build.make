# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build

# Include any dependencies generated for this target.
include CMakeFiles/TP1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/TP1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/TP1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TP1.dir/flags.make

CMakeFiles/TP1.dir/TP1/TP1.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/TP1/TP1.cpp.o: ../TP1/TP1.cpp
CMakeFiles/TP1.dir/TP1/TP1.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TP1.dir/TP1/TP1.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/TP1/TP1.cpp.o -MF CMakeFiles/TP1.dir/TP1/TP1.cpp.o.d -o CMakeFiles/TP1.dir/TP1/TP1.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/TP1/TP1.cpp

CMakeFiles/TP1.dir/TP1/TP1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/TP1/TP1.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/TP1/TP1.cpp > CMakeFiles/TP1.dir/TP1/TP1.cpp.i

CMakeFiles/TP1.dir/TP1/TP1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/TP1/TP1.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/TP1/TP1.cpp -o CMakeFiles/TP1.dir/TP1/TP1.cpp.s

CMakeFiles/TP1.dir/common/shader.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/shader.cpp.o: ../common/shader.cpp
CMakeFiles/TP1.dir/common/shader.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TP1.dir/common/shader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/shader.cpp.o -MF CMakeFiles/TP1.dir/common/shader.cpp.o.d -o CMakeFiles/TP1.dir/common/shader.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/shader.cpp

CMakeFiles/TP1.dir/common/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/shader.cpp > CMakeFiles/TP1.dir/common/shader.cpp.i

CMakeFiles/TP1.dir/common/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/shader.cpp -o CMakeFiles/TP1.dir/common/shader.cpp.s

CMakeFiles/TP1.dir/common/controls.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/controls.cpp.o: ../common/controls.cpp
CMakeFiles/TP1.dir/common/controls.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/TP1.dir/common/controls.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/controls.cpp.o -MF CMakeFiles/TP1.dir/common/controls.cpp.o.d -o CMakeFiles/TP1.dir/common/controls.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/controls.cpp

CMakeFiles/TP1.dir/common/controls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/controls.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/controls.cpp > CMakeFiles/TP1.dir/common/controls.cpp.i

CMakeFiles/TP1.dir/common/controls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/controls.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/controls.cpp -o CMakeFiles/TP1.dir/common/controls.cpp.s

CMakeFiles/TP1.dir/common/texture.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/texture.cpp.o: ../common/texture.cpp
CMakeFiles/TP1.dir/common/texture.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/TP1.dir/common/texture.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/texture.cpp.o -MF CMakeFiles/TP1.dir/common/texture.cpp.o.d -o CMakeFiles/TP1.dir/common/texture.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/texture.cpp

CMakeFiles/TP1.dir/common/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/texture.cpp > CMakeFiles/TP1.dir/common/texture.cpp.i

CMakeFiles/TP1.dir/common/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/texture.cpp -o CMakeFiles/TP1.dir/common/texture.cpp.s

CMakeFiles/TP1.dir/common/objloader.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/objloader.cpp.o: ../common/objloader.cpp
CMakeFiles/TP1.dir/common/objloader.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/TP1.dir/common/objloader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/objloader.cpp.o -MF CMakeFiles/TP1.dir/common/objloader.cpp.o.d -o CMakeFiles/TP1.dir/common/objloader.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/objloader.cpp

CMakeFiles/TP1.dir/common/objloader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/objloader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/objloader.cpp > CMakeFiles/TP1.dir/common/objloader.cpp.i

CMakeFiles/TP1.dir/common/objloader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/objloader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/objloader.cpp -o CMakeFiles/TP1.dir/common/objloader.cpp.s

CMakeFiles/TP1.dir/common/vboindexer.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/vboindexer.cpp.o: ../common/vboindexer.cpp
CMakeFiles/TP1.dir/common/vboindexer.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/TP1.dir/common/vboindexer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/vboindexer.cpp.o -MF CMakeFiles/TP1.dir/common/vboindexer.cpp.o.d -o CMakeFiles/TP1.dir/common/vboindexer.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/vboindexer.cpp

CMakeFiles/TP1.dir/common/vboindexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/vboindexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/vboindexer.cpp > CMakeFiles/TP1.dir/common/vboindexer.cpp.i

CMakeFiles/TP1.dir/common/vboindexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/vboindexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/vboindexer.cpp -o CMakeFiles/TP1.dir/common/vboindexer.cpp.s

CMakeFiles/TP1.dir/common/Entity.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/Entity.cpp.o: ../common/Entity.cpp
CMakeFiles/TP1.dir/common/Entity.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/TP1.dir/common/Entity.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/Entity.cpp.o -MF CMakeFiles/TP1.dir/common/Entity.cpp.o.d -o CMakeFiles/TP1.dir/common/Entity.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Entity.cpp

CMakeFiles/TP1.dir/common/Entity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/Entity.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Entity.cpp > CMakeFiles/TP1.dir/common/Entity.cpp.i

CMakeFiles/TP1.dir/common/Entity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/Entity.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Entity.cpp -o CMakeFiles/TP1.dir/common/Entity.cpp.s

CMakeFiles/TP1.dir/common/EntityRoot.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/EntityRoot.cpp.o: ../common/EntityRoot.cpp
CMakeFiles/TP1.dir/common/EntityRoot.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/TP1.dir/common/EntityRoot.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/EntityRoot.cpp.o -MF CMakeFiles/TP1.dir/common/EntityRoot.cpp.o.d -o CMakeFiles/TP1.dir/common/EntityRoot.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/EntityRoot.cpp

CMakeFiles/TP1.dir/common/EntityRoot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/EntityRoot.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/EntityRoot.cpp > CMakeFiles/TP1.dir/common/EntityRoot.cpp.i

CMakeFiles/TP1.dir/common/EntityRoot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/EntityRoot.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/EntityRoot.cpp -o CMakeFiles/TP1.dir/common/EntityRoot.cpp.s

CMakeFiles/TP1.dir/common/Transform.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/Transform.cpp.o: ../common/Transform.cpp
CMakeFiles/TP1.dir/common/Transform.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/TP1.dir/common/Transform.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/Transform.cpp.o -MF CMakeFiles/TP1.dir/common/Transform.cpp.o.d -o CMakeFiles/TP1.dir/common/Transform.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Transform.cpp

CMakeFiles/TP1.dir/common/Transform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/Transform.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Transform.cpp > CMakeFiles/TP1.dir/common/Transform.cpp.i

CMakeFiles/TP1.dir/common/Transform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/Transform.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Transform.cpp -o CMakeFiles/TP1.dir/common/Transform.cpp.s

CMakeFiles/TP1.dir/common/Terrain.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/Terrain.cpp.o: ../common/Terrain.cpp
CMakeFiles/TP1.dir/common/Terrain.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/TP1.dir/common/Terrain.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/Terrain.cpp.o -MF CMakeFiles/TP1.dir/common/Terrain.cpp.o.d -o CMakeFiles/TP1.dir/common/Terrain.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Terrain.cpp

CMakeFiles/TP1.dir/common/Terrain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/Terrain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Terrain.cpp > CMakeFiles/TP1.dir/common/Terrain.cpp.i

CMakeFiles/TP1.dir/common/Terrain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/Terrain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Terrain.cpp -o CMakeFiles/TP1.dir/common/Terrain.cpp.s

CMakeFiles/TP1.dir/common/skybox.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/skybox.cpp.o: ../common/skybox.cpp
CMakeFiles/TP1.dir/common/skybox.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/TP1.dir/common/skybox.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/skybox.cpp.o -MF CMakeFiles/TP1.dir/common/skybox.cpp.o.d -o CMakeFiles/TP1.dir/common/skybox.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/skybox.cpp

CMakeFiles/TP1.dir/common/skybox.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/skybox.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/skybox.cpp > CMakeFiles/TP1.dir/common/skybox.cpp.i

CMakeFiles/TP1.dir/common/skybox.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/skybox.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/skybox.cpp -o CMakeFiles/TP1.dir/common/skybox.cpp.s

CMakeFiles/TP1.dir/common/Sphere.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/Sphere.cpp.o: ../common/Sphere.cpp
CMakeFiles/TP1.dir/common/Sphere.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/TP1.dir/common/Sphere.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/Sphere.cpp.o -MF CMakeFiles/TP1.dir/common/Sphere.cpp.o.d -o CMakeFiles/TP1.dir/common/Sphere.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Sphere.cpp

CMakeFiles/TP1.dir/common/Sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/Sphere.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Sphere.cpp > CMakeFiles/TP1.dir/common/Sphere.cpp.i

CMakeFiles/TP1.dir/common/Sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/Sphere.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/Sphere.cpp -o CMakeFiles/TP1.dir/common/Sphere.cpp.s

CMakeFiles/TP1.dir/common/cube.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/cube.cpp.o: ../common/cube.cpp
CMakeFiles/TP1.dir/common/cube.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/TP1.dir/common/cube.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/cube.cpp.o -MF CMakeFiles/TP1.dir/common/cube.cpp.o.d -o CMakeFiles/TP1.dir/common/cube.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/cube.cpp

CMakeFiles/TP1.dir/common/cube.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/cube.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/cube.cpp > CMakeFiles/TP1.dir/common/cube.cpp.i

CMakeFiles/TP1.dir/common/cube.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/cube.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/cube.cpp -o CMakeFiles/TP1.dir/common/cube.cpp.s

CMakeFiles/TP1.dir/common/BBOX.cpp.o: CMakeFiles/TP1.dir/flags.make
CMakeFiles/TP1.dir/common/BBOX.cpp.o: ../common/BBOX.cpp
CMakeFiles/TP1.dir/common/BBOX.cpp.o: CMakeFiles/TP1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/TP1.dir/common/BBOX.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TP1.dir/common/BBOX.cpp.o -MF CMakeFiles/TP1.dir/common/BBOX.cpp.o.d -o CMakeFiles/TP1.dir/common/BBOX.cpp.o -c /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/BBOX.cpp

CMakeFiles/TP1.dir/common/BBOX.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TP1.dir/common/BBOX.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/BBOX.cpp > CMakeFiles/TP1.dir/common/BBOX.cpp.i

CMakeFiles/TP1.dir/common/BBOX.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TP1.dir/common/BBOX.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/common/BBOX.cpp -o CMakeFiles/TP1.dir/common/BBOX.cpp.s

# Object files for target TP1
TP1_OBJECTS = \
"CMakeFiles/TP1.dir/TP1/TP1.cpp.o" \
"CMakeFiles/TP1.dir/common/shader.cpp.o" \
"CMakeFiles/TP1.dir/common/controls.cpp.o" \
"CMakeFiles/TP1.dir/common/texture.cpp.o" \
"CMakeFiles/TP1.dir/common/objloader.cpp.o" \
"CMakeFiles/TP1.dir/common/vboindexer.cpp.o" \
"CMakeFiles/TP1.dir/common/Entity.cpp.o" \
"CMakeFiles/TP1.dir/common/EntityRoot.cpp.o" \
"CMakeFiles/TP1.dir/common/Transform.cpp.o" \
"CMakeFiles/TP1.dir/common/Terrain.cpp.o" \
"CMakeFiles/TP1.dir/common/skybox.cpp.o" \
"CMakeFiles/TP1.dir/common/Sphere.cpp.o" \
"CMakeFiles/TP1.dir/common/cube.cpp.o" \
"CMakeFiles/TP1.dir/common/BBOX.cpp.o"

# External object files for target TP1
TP1_EXTERNAL_OBJECTS =

TP1: CMakeFiles/TP1.dir/TP1/TP1.cpp.o
TP1: CMakeFiles/TP1.dir/common/shader.cpp.o
TP1: CMakeFiles/TP1.dir/common/controls.cpp.o
TP1: CMakeFiles/TP1.dir/common/texture.cpp.o
TP1: CMakeFiles/TP1.dir/common/objloader.cpp.o
TP1: CMakeFiles/TP1.dir/common/vboindexer.cpp.o
TP1: CMakeFiles/TP1.dir/common/Entity.cpp.o
TP1: CMakeFiles/TP1.dir/common/EntityRoot.cpp.o
TP1: CMakeFiles/TP1.dir/common/Transform.cpp.o
TP1: CMakeFiles/TP1.dir/common/Terrain.cpp.o
TP1: CMakeFiles/TP1.dir/common/skybox.cpp.o
TP1: CMakeFiles/TP1.dir/common/Sphere.cpp.o
TP1: CMakeFiles/TP1.dir/common/cube.cpp.o
TP1: CMakeFiles/TP1.dir/common/BBOX.cpp.o
TP1: CMakeFiles/TP1.dir/build.make
TP1: /usr/lib/x86_64-linux-gnu/libGL.so
TP1: /usr/lib/x86_64-linux-gnu/libGLU.so
TP1: external/glfw-3.1.2/src/libglfw3.a
TP1: external/libGLEW_1130.a
TP1: /usr/lib/x86_64-linux-gnu/librt.a
TP1: /usr/lib/x86_64-linux-gnu/libm.so
TP1: /usr/lib/x86_64-linux-gnu/libX11.so
TP1: /usr/lib/x86_64-linux-gnu/libXrandr.so
TP1: /usr/lib/x86_64-linux-gnu/libXinerama.so
TP1: /usr/lib/x86_64-linux-gnu/libXi.so
TP1: /usr/lib/x86_64-linux-gnu/libXcursor.so
TP1: /usr/lib/x86_64-linux-gnu/librt.a
TP1: /usr/lib/x86_64-linux-gnu/libm.so
TP1: /usr/lib/x86_64-linux-gnu/libX11.so
TP1: /usr/lib/x86_64-linux-gnu/libXrandr.so
TP1: /usr/lib/x86_64-linux-gnu/libXinerama.so
TP1: /usr/lib/x86_64-linux-gnu/libXi.so
TP1: /usr/lib/x86_64-linux-gnu/libXcursor.so
TP1: /usr/lib/x86_64-linux-gnu/libGL.so
TP1: /usr/lib/x86_64-linux-gnu/libGLU.so
TP1: CMakeFiles/TP1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable TP1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TP1.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -E copy /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/./TP1 /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/TP1/

# Rule to build all files generated by this target.
CMakeFiles/TP1.dir/build: TP1
.PHONY : CMakeFiles/TP1.dir/build

CMakeFiles/TP1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TP1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TP1.dir/clean

CMakeFiles/TP1.dir/depend:
	cd /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build /home/thibault/Documents/Projet_MoteurGIT/Projet-moteur-de-jeux/TP5/TP1_code/build/CMakeFiles/TP1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TP1.dir/depend

