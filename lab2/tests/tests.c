#include <utils.h>
#include <lab2.h>
#include <gtest/gtest.h>

bool check(int maxcount, int size){
    vector* v;
    init_vector(&v, size);
    for(int i = 0; i < size; i++){
        push_vector(v, rand() % 100);
    }
    sort_1(&v, maxcount);
    for(int i = 0; i < v->size - 1; i++){
        if(v->d[i] > v->d[i + 1]){
            free(v.d);
            return false;
        }
    }
    free(v.d);
    return true;
}

TEST(0_pthreads_100_size, test1){
    ASSERT_TRUE(check(0, 100));
}

TEST(2_pthreads_10_size, test2){
    ASSERT_TRUE(check(2, 10));
}

TEST(4_pthreads_1000_size, test3){
    ASSERT_TRUE(check(4, 1000));
}

TEST(8_pthreads_100_size, test4){
    ASSERT_TRUE(check(8, 10000));
}

TEST(16_pthreads_100_size, test5){
    ASSERT_TRUE(check(16, 100000));
}

TEST(0_pthreads_0_size, test6){
    ASSERT_TRUE(check(0, 0));
}

TEST(12_pthreads_56473_size, test7){
    ASSERT_TRUE(check(0, 56470));
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
