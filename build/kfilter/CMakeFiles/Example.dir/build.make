# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/ruic7/mymtt/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ruic7/mymtt/build

# Include any dependencies generated for this target.
include kfilter/CMakeFiles/Example.dir/depend.make

# Include the progress variables for this target.
include kfilter/CMakeFiles/Example.dir/progress.make

# Include the compile flags for this target's objects.
include kfilter/CMakeFiles/Example.dir/flags.make

kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o: kfilter/CMakeFiles/Example.dir/flags.make
kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o: /home/ruic7/mymtt/src/kfilter/samples/Example/example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruic7/mymtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o"
	cd /home/ruic7/mymtt/build/kfilter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Example.dir/samples/Example/example.cpp.o -c /home/ruic7/mymtt/src/kfilter/samples/Example/example.cpp

kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Example.dir/samples/Example/example.cpp.i"
	cd /home/ruic7/mymtt/build/kfilter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruic7/mymtt/src/kfilter/samples/Example/example.cpp > CMakeFiles/Example.dir/samples/Example/example.cpp.i

kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Example.dir/samples/Example/example.cpp.s"
	cd /home/ruic7/mymtt/build/kfilter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruic7/mymtt/src/kfilter/samples/Example/example.cpp -o CMakeFiles/Example.dir/samples/Example/example.cpp.s

kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o.requires:

.PHONY : kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o.requires

kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o.provides: kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o.requires
	$(MAKE) -f kfilter/CMakeFiles/Example.dir/build.make kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o.provides.build
.PHONY : kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o.provides

kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o.provides.build: kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o


kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o: kfilter/CMakeFiles/Example.dir/flags.make
kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o: /home/ruic7/mymtt/src/kfilter/samples/Example/plane.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruic7/mymtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o"
	cd /home/ruic7/mymtt/build/kfilter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Example.dir/samples/Example/plane.cpp.o -c /home/ruic7/mymtt/src/kfilter/samples/Example/plane.cpp

kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Example.dir/samples/Example/plane.cpp.i"
	cd /home/ruic7/mymtt/build/kfilter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruic7/mymtt/src/kfilter/samples/Example/plane.cpp > CMakeFiles/Example.dir/samples/Example/plane.cpp.i

kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Example.dir/samples/Example/plane.cpp.s"
	cd /home/ruic7/mymtt/build/kfilter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruic7/mymtt/src/kfilter/samples/Example/plane.cpp -o CMakeFiles/Example.dir/samples/Example/plane.cpp.s

kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o.requires:

.PHONY : kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o.requires

kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o.provides: kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o.requires
	$(MAKE) -f kfilter/CMakeFiles/Example.dir/build.make kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o.provides.build
.PHONY : kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o.provides

kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o.provides.build: kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o


kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o: kfilter/CMakeFiles/Example.dir/flags.make
kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o: /home/ruic7/mymtt/src/kfilter/samples/Example/simple_plane.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruic7/mymtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o"
	cd /home/ruic7/mymtt/build/kfilter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o -c /home/ruic7/mymtt/src/kfilter/samples/Example/simple_plane.cpp

kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.i"
	cd /home/ruic7/mymtt/build/kfilter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruic7/mymtt/src/kfilter/samples/Example/simple_plane.cpp > CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.i

kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.s"
	cd /home/ruic7/mymtt/build/kfilter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruic7/mymtt/src/kfilter/samples/Example/simple_plane.cpp -o CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.s

kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o.requires:

.PHONY : kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o.requires

kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o.provides: kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o.requires
	$(MAKE) -f kfilter/CMakeFiles/Example.dir/build.make kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o.provides.build
.PHONY : kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o.provides

kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o.provides.build: kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o


# Object files for target Example
Example_OBJECTS = \
"CMakeFiles/Example.dir/samples/Example/example.cpp.o" \
"CMakeFiles/Example.dir/samples/Example/plane.cpp.o" \
"CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o"

# External object files for target Example
Example_EXTERNAL_OBJECTS =

/home/ruic7/mymtt/devel/lib/kfilter/Example: kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o
/home/ruic7/mymtt/devel/lib/kfilter/Example: kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o
/home/ruic7/mymtt/devel/lib/kfilter/Example: kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o
/home/ruic7/mymtt/devel/lib/kfilter/Example: kfilter/CMakeFiles/Example.dir/build.make
/home/ruic7/mymtt/devel/lib/kfilter/Example: /home/ruic7/mymtt/devel/lib/libkfilter.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /opt/ros/melodic/lib/libroscpp.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /opt/ros/melodic/lib/librosconsole.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /opt/ros/melodic/lib/librostime.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /opt/ros/melodic/lib/libcpp_common.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ruic7/mymtt/devel/lib/kfilter/Example: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/ruic7/mymtt/devel/lib/kfilter/Example: kfilter/CMakeFiles/Example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ruic7/mymtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable /home/ruic7/mymtt/devel/lib/kfilter/Example"
	cd /home/ruic7/mymtt/build/kfilter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
kfilter/CMakeFiles/Example.dir/build: /home/ruic7/mymtt/devel/lib/kfilter/Example

.PHONY : kfilter/CMakeFiles/Example.dir/build

kfilter/CMakeFiles/Example.dir/requires: kfilter/CMakeFiles/Example.dir/samples/Example/example.cpp.o.requires
kfilter/CMakeFiles/Example.dir/requires: kfilter/CMakeFiles/Example.dir/samples/Example/plane.cpp.o.requires
kfilter/CMakeFiles/Example.dir/requires: kfilter/CMakeFiles/Example.dir/samples/Example/simple_plane.cpp.o.requires

.PHONY : kfilter/CMakeFiles/Example.dir/requires

kfilter/CMakeFiles/Example.dir/clean:
	cd /home/ruic7/mymtt/build/kfilter && $(CMAKE_COMMAND) -P CMakeFiles/Example.dir/cmake_clean.cmake
.PHONY : kfilter/CMakeFiles/Example.dir/clean

kfilter/CMakeFiles/Example.dir/depend:
	cd /home/ruic7/mymtt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruic7/mymtt/src /home/ruic7/mymtt/src/kfilter /home/ruic7/mymtt/build /home/ruic7/mymtt/build/kfilter /home/ruic7/mymtt/build/kfilter/CMakeFiles/Example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : kfilter/CMakeFiles/Example.dir/depend

