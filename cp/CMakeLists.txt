set(CMAKE_CXX_STANDARD 17)

add_library(cp_lib src/job_dag.cpp src/job_exec.cpp)

add_executable(cp_main main.cpp)

target_include_directories(cp_lib PUBLIC include)
target_include_directories(cp_lib PUBLIC lib)

target_link_libraries(cp_main PUBLIC cp_lib)


find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})
include_directories(/usr/include)

add_executable(Test tests/tests.cpp)
target_include_directories(Test PUBLIC cp_lib)
target_link_libraries(Test ${GTEST_LIBRARIES})
target_link_libraries(Test  gtest pthread)

target_include_directories(Test PRIVATE ${CMAKE_SOURCE_DIR}/cp/include)
target_include_directories(Test PRIVATE ${CMAKE_SOURCE_DIR}/cp/lib)
target_link_libraries(Test PRIVATE cp_lib GTest::GTest)

enable_testing()
add_test(Test Test)
