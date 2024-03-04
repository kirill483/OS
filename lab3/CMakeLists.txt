cmake_minimum_required(VERSION 3.10)

project(lab3)

set(CMAKE_CXX_COMPILER g++)

set(CMAKE_CXX_STANDARD 17)

add_executable(main main.cpp  src/utils.cpp src/lab3.cpp include/utils.hpp include/lab3.hpp)
add_executable(child src/child.cpp include/utils.hpp src/utils.cpp)

target_include_directories(main PRIVATE include)
target_include_directories(child PRIVATE include)
target_link_libraries(child -pthread -lm  -lrt -std=c++17)
target_link_libraries(main -pthread -lm  -lrt -std=c++17)
target_include_directories(main PRIVATE include)

add_dependencies(main child)


find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})
include_directories(/usr/include)

add_executable(Test tests/tests.cpp src/utils.cpp  src/lab3.cpp include/utils.hpp include/lab3.hpp)
target_link_libraries(Test -pthread -lm  -lrt -std=c++17 -std=c++2a -lstdc++)
target_include_directories(Test PRIVATE include)
target_link_libraries(Test ${GTEST_LIBRARIES})
target_link_libraries(Test  gtest pthread)

add_compile_options(-std=c++2a -lstdc++)

enable_testing()
add_test(Test Test)
