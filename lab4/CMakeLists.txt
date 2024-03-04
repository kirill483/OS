cmake_minimum_required(VERSION 3.10)

project(lab4)

set(CMAKE_CXX_STANDARD 17)

add_library(lib1 SHARED src/lib1.cpp)
add_library(lib2 SHARED src/lib2.cpp)

target_include_directories(lib1 PUBLIC include)
target_include_directories(lib2 PUBLIC include)

add_executable(static_main static_main.cpp)
target_link_libraries(static_main PRIVATE lib1)

add_executable(dynamic_main dynamic_main.cpp include/utils.hpp src/utils.cpp)
target_link_libraries(dynamic_main dl)
target_include_directories(dynamic_main PRIVATE include)




find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})
include_directories(/usr/include)

add_executable(Test tests/tests.cpp  include/utils.hpp src/utils.cpp  src/lib1.cpp)
target_include_directories(Test PRIVATE include lib1)
target_link_libraries(Test ${GTEST_LIBRARIES})
target_link_libraries(Test gtest pthread dl)

add_executable(Test2 tests/tests2.cpp  include/utils.hpp src/utils.cpp  src/lib2.cpp)
target_include_directories(Test2 PRIVATE include lib2)
target_link_libraries(Test2 ${GTEST_LIBRARIES})
target_link_libraries(Test2 gtest pthread dl)

enable_testing()
add_test(Test Test)
add_test(Test2 Test2)

