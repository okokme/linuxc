# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_SOURCE_DIR = /home/k/server-/reactor/demo_1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/k/server-/reactor/demo_1/build

# Include any dependencies generated for this target.
include CMakeFiles/muduo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/muduo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/muduo.dir/flags.make

CMakeFiles/muduo.dir/Channel.cc.o: CMakeFiles/muduo.dir/flags.make
CMakeFiles/muduo.dir/Channel.cc.o: ../Channel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/k/server-/reactor/demo_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/muduo.dir/Channel.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo.dir/Channel.cc.o -c /home/k/server-/reactor/demo_1/Channel.cc

CMakeFiles/muduo.dir/Channel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo.dir/Channel.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/k/server-/reactor/demo_1/Channel.cc > CMakeFiles/muduo.dir/Channel.cc.i

CMakeFiles/muduo.dir/Channel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo.dir/Channel.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/k/server-/reactor/demo_1/Channel.cc -o CMakeFiles/muduo.dir/Channel.cc.s

CMakeFiles/muduo.dir/Acceptor.cc.o: CMakeFiles/muduo.dir/flags.make
CMakeFiles/muduo.dir/Acceptor.cc.o: ../Acceptor.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/k/server-/reactor/demo_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/muduo.dir/Acceptor.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo.dir/Acceptor.cc.o -c /home/k/server-/reactor/demo_1/Acceptor.cc

CMakeFiles/muduo.dir/Acceptor.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo.dir/Acceptor.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/k/server-/reactor/demo_1/Acceptor.cc > CMakeFiles/muduo.dir/Acceptor.cc.i

CMakeFiles/muduo.dir/Acceptor.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo.dir/Acceptor.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/k/server-/reactor/demo_1/Acceptor.cc -o CMakeFiles/muduo.dir/Acceptor.cc.s

CMakeFiles/muduo.dir/TcpServer.cc.o: CMakeFiles/muduo.dir/flags.make
CMakeFiles/muduo.dir/TcpServer.cc.o: ../TcpServer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/k/server-/reactor/demo_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/muduo.dir/TcpServer.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo.dir/TcpServer.cc.o -c /home/k/server-/reactor/demo_1/TcpServer.cc

CMakeFiles/muduo.dir/TcpServer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo.dir/TcpServer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/k/server-/reactor/demo_1/TcpServer.cc > CMakeFiles/muduo.dir/TcpServer.cc.i

CMakeFiles/muduo.dir/TcpServer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo.dir/TcpServer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/k/server-/reactor/demo_1/TcpServer.cc -o CMakeFiles/muduo.dir/TcpServer.cc.s

CMakeFiles/muduo.dir/Eventloop.cc.o: CMakeFiles/muduo.dir/flags.make
CMakeFiles/muduo.dir/Eventloop.cc.o: ../Eventloop.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/k/server-/reactor/demo_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/muduo.dir/Eventloop.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo.dir/Eventloop.cc.o -c /home/k/server-/reactor/demo_1/Eventloop.cc

CMakeFiles/muduo.dir/Eventloop.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo.dir/Eventloop.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/k/server-/reactor/demo_1/Eventloop.cc > CMakeFiles/muduo.dir/Eventloop.cc.i

CMakeFiles/muduo.dir/Eventloop.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo.dir/Eventloop.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/k/server-/reactor/demo_1/Eventloop.cc -o CMakeFiles/muduo.dir/Eventloop.cc.s

CMakeFiles/muduo.dir/Socket.cc.o: CMakeFiles/muduo.dir/flags.make
CMakeFiles/muduo.dir/Socket.cc.o: ../Socket.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/k/server-/reactor/demo_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/muduo.dir/Socket.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo.dir/Socket.cc.o -c /home/k/server-/reactor/demo_1/Socket.cc

CMakeFiles/muduo.dir/Socket.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo.dir/Socket.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/k/server-/reactor/demo_1/Socket.cc > CMakeFiles/muduo.dir/Socket.cc.i

CMakeFiles/muduo.dir/Socket.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo.dir/Socket.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/k/server-/reactor/demo_1/Socket.cc -o CMakeFiles/muduo.dir/Socket.cc.s

CMakeFiles/muduo.dir/buffer.cc.o: CMakeFiles/muduo.dir/flags.make
CMakeFiles/muduo.dir/buffer.cc.o: ../buffer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/k/server-/reactor/demo_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/muduo.dir/buffer.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo.dir/buffer.cc.o -c /home/k/server-/reactor/demo_1/buffer.cc

CMakeFiles/muduo.dir/buffer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo.dir/buffer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/k/server-/reactor/demo_1/buffer.cc > CMakeFiles/muduo.dir/buffer.cc.i

CMakeFiles/muduo.dir/buffer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo.dir/buffer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/k/server-/reactor/demo_1/buffer.cc -o CMakeFiles/muduo.dir/buffer.cc.s

CMakeFiles/muduo.dir/Epoll.cc.o: CMakeFiles/muduo.dir/flags.make
CMakeFiles/muduo.dir/Epoll.cc.o: ../Epoll.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/k/server-/reactor/demo_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/muduo.dir/Epoll.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo.dir/Epoll.cc.o -c /home/k/server-/reactor/demo_1/Epoll.cc

CMakeFiles/muduo.dir/Epoll.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo.dir/Epoll.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/k/server-/reactor/demo_1/Epoll.cc > CMakeFiles/muduo.dir/Epoll.cc.i

CMakeFiles/muduo.dir/Epoll.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo.dir/Epoll.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/k/server-/reactor/demo_1/Epoll.cc -o CMakeFiles/muduo.dir/Epoll.cc.s

CMakeFiles/muduo.dir/httpdeal.cc.o: CMakeFiles/muduo.dir/flags.make
CMakeFiles/muduo.dir/httpdeal.cc.o: ../httpdeal.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/k/server-/reactor/demo_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/muduo.dir/httpdeal.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo.dir/httpdeal.cc.o -c /home/k/server-/reactor/demo_1/httpdeal.cc

CMakeFiles/muduo.dir/httpdeal.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo.dir/httpdeal.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/k/server-/reactor/demo_1/httpdeal.cc > CMakeFiles/muduo.dir/httpdeal.cc.i

CMakeFiles/muduo.dir/httpdeal.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo.dir/httpdeal.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/k/server-/reactor/demo_1/httpdeal.cc -o CMakeFiles/muduo.dir/httpdeal.cc.s

CMakeFiles/muduo.dir/test1.cc.o: CMakeFiles/muduo.dir/flags.make
CMakeFiles/muduo.dir/test1.cc.o: ../test1.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/k/server-/reactor/demo_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/muduo.dir/test1.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/muduo.dir/test1.cc.o -c /home/k/server-/reactor/demo_1/test1.cc

CMakeFiles/muduo.dir/test1.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo.dir/test1.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/k/server-/reactor/demo_1/test1.cc > CMakeFiles/muduo.dir/test1.cc.i

CMakeFiles/muduo.dir/test1.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo.dir/test1.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/k/server-/reactor/demo_1/test1.cc -o CMakeFiles/muduo.dir/test1.cc.s

# Object files for target muduo
muduo_OBJECTS = \
"CMakeFiles/muduo.dir/Channel.cc.o" \
"CMakeFiles/muduo.dir/Acceptor.cc.o" \
"CMakeFiles/muduo.dir/TcpServer.cc.o" \
"CMakeFiles/muduo.dir/Eventloop.cc.o" \
"CMakeFiles/muduo.dir/Socket.cc.o" \
"CMakeFiles/muduo.dir/buffer.cc.o" \
"CMakeFiles/muduo.dir/Epoll.cc.o" \
"CMakeFiles/muduo.dir/httpdeal.cc.o" \
"CMakeFiles/muduo.dir/test1.cc.o"

# External object files for target muduo
muduo_EXTERNAL_OBJECTS =

muduo: CMakeFiles/muduo.dir/Channel.cc.o
muduo: CMakeFiles/muduo.dir/Acceptor.cc.o
muduo: CMakeFiles/muduo.dir/TcpServer.cc.o
muduo: CMakeFiles/muduo.dir/Eventloop.cc.o
muduo: CMakeFiles/muduo.dir/Socket.cc.o
muduo: CMakeFiles/muduo.dir/buffer.cc.o
muduo: CMakeFiles/muduo.dir/Epoll.cc.o
muduo: CMakeFiles/muduo.dir/httpdeal.cc.o
muduo: CMakeFiles/muduo.dir/test1.cc.o
muduo: CMakeFiles/muduo.dir/build.make
muduo: CMakeFiles/muduo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/k/server-/reactor/demo_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable muduo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/muduo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/muduo.dir/build: muduo

.PHONY : CMakeFiles/muduo.dir/build

CMakeFiles/muduo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/muduo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/muduo.dir/clean

CMakeFiles/muduo.dir/depend:
	cd /home/k/server-/reactor/demo_1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/k/server-/reactor/demo_1 /home/k/server-/reactor/demo_1 /home/k/server-/reactor/demo_1/build /home/k/server-/reactor/demo_1/build /home/k/server-/reactor/demo_1/build/CMakeFiles/muduo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/muduo.dir/depend

