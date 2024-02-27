#include <gtest/gtest.h>
#include <utils.hpp>
#include <lab1.hpp>

bool is_correct(int* input,int in_size, int* output, int out_size){
    FILE* file1 = fopen("input.txt","w");
    fprintf(file1, "%s\n", "output.txt");
    for(int i = 0; i < in_size; i++){
        fprintf(file1, "%d\n", input[i]);
    }
    fclose(file1);
    file1 = fopen("input.txt","r");
    ParentRoutine("/mnt/c/Users/Kirill/OS/lab1/build/child", file1);
    FILE* file2 = fopen("output.txt","r");
    int tmp;
    for(int i = 0; i < out_size; i++){
        fscanf(file2, "%d\n", &tmp);
        if(tmp != output[i]){
            fclose(file2);
            return false;
        }
    }
    fclose(file2);
    return true;
}


TEST(input5_output4, test1){
    int in_size = 5;
    int out_size = 4;
    int input[5] = {4,4,6,9,-1};
    int output[4] = {4,4,6,9};
    ASSERT_TRUE(is_correct(input, in_size, output, out_size));
}

TEST(input2_output1, test2){
    int in_size = 2;
    int out_size = 1;
    int input[2] = {110,-15};
    int output[1] = {110};
    ASSERT_TRUE(is_correct(input, in_size, output, out_size));
}

TEST(input5_output0, test3){
    int in_size = 5;
    int out_size = 0;
    int input[5] = {-12,0,6,9,-1};
    int output[0] = {};
    ASSERT_TRUE(is_correct(input, in_size, output, out_size));
}

TEST(input3_output2, test4){
    int in_size = 3;
    int out_size = 2;
    int input[5] = {18,100,1};
    int output[4] = {18,100};
    ASSERT_TRUE(is_correct(input, in_size, output, out_size));
}

TEST(input4_output4, test5){
    int in_size = 4;
    int out_size = 4;
    int input[5] = {4,4,6,150};
    int output[4] = {4,4,6,150};
    ASSERT_TRUE(is_correct(input, in_size, output, out_size));
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

