cmake_minimum_required(VERSION 3.16.3)
project(lab57)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS "-lzmq")

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

add_executable(server include/topology.hpp src/topology.cpp include/socket.hpp 
        src/socket.cpp src/calculation_node.cpp
)
target_include_directories(server PRIVATE include)

add_executable(client include/topology.hpp src/topology.cpp include/socket.hpp
        src/socket.cpp src/control_node.cpp
)


target_include_directories(client PRIVATE include)

target_link_libraries(server PRIVATE zmq)

target_link_libraries(client PRIVATE zmq)


find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})
include_directories(/usr/include)

add_executable(Test tests/tests.cpp src/topology.cpp src/socket.cpp include/topology.hpp include/socket.hpp)
target_include_directories(Test PRIVATE include)
target_link_libraries(Test ${GTEST_LIBRARIES})
target_link_libraries(Test  gtest pthread zmq)


enable_testing()
add_test(Test Test)
