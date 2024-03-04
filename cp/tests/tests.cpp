#include "gtest/gtest.h"

#include "../include/job_exec.hpp"

std::string getPath() {
    
    // export PATH_TO_EX_DIR="/mnt/c/Users/Kirill/OS/data/"

    if (getenv("PATH_TO_EX_DIR") == nullptr) {
        std::cout << "PATH_TO_EX_DIR is not specified\n";
        exit(EXIT_FAILURE);
    }
    std::string path = std::string(getenv("PATH_TO_EX_DIR"));
    return path;
}

TEST(CP1, Test1) {
    std::string path = getPath() + "e1/e1.json";
    std::cout << path << std::endl;
    cp::TJobDag dag = cp::JSONParser::Parse(path);
    cp::TDagJobExecutor ex;
    EXPECT_TRUE(ex.Execute(dag));
}

TEST(CP2, Test2) {
    std::string path = getPath() + "e2/e2.json";
    cp::TJobDag dag = cp::JSONParser::Parse(path);
    cp::TDagJobExecutor ex;
    ex.Execute(dag);
    EXPECT_TRUE(ex.Execute(dag));
}

TEST(CP3, Test2) {
    std::string path = getPath() + "e3/e3.json";
    cp::TJobDag dag = cp::JSONParser::Parse(path);
    cp::TDagJobExecutor ex;
    ex.Execute(dag);
    EXPECT_TRUE(ex.Execute(dag));
}

TEST(CP4, Test4) {
    std::string path = getPath() + "e4/e4.json";
    EXPECT_THROW({cp::TJobDag dag = cp::JSONParser::Parse(path);}, std::logic_error);
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
