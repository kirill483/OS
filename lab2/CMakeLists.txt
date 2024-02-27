cmake_minimum_required(VERSION 3.10)

project(lab2)

add_executable(main main.cpp  src/utils.cpp src/lab2.cpp include/utils.h include/lab2.h )
target_link_libraries(main -pthread -lm)
target_include_directories(main PRIVATE include)

find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})
include_directories(/usr/include)

add_executable(Test tests/tests.cpp src/utils.cpp src/lab2.cpp include/utils.h include/lab2.h)
target_include_directories(Test PRIVATE include)
target_link_libraries(Test ${GTEST_LIBRARIES})
target_link_libraries(Test  gtest pthread)


enable_testing()
add_test(Test Test)

