cmake_minimum_required(VERSION 3.10)

project(lab1)

add_executable(main main.cpp  src/utils.cpp src/lab1.cpp include/utils.hpp include/lab1.hpp)
add_executable(child src/child.cpp include/utils.hpp src/utils.cpp)

target_include_directories(main PRIVATE include)
target_include_directories(child PRIVATE include)

target_link_libraries(main -pthread -lm)
target_include_directories(main PRIVATE include)

add_dependencies(main child)


find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})
include_directories(/usr/include)

add_executable(Test tests/tests.cpp src/utils.cpp  src/lab1.cpp include/utils.hpp include/lab1.hpp)
target_include_directories(Test PRIVATE include)
target_link_libraries(Test ${GTEST_LIBRARIES})
target_link_libraries(Test  gtest pthread)


enable_testing()
add_test(Test Test)
