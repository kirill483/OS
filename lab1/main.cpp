#include "lab1.hpp"

int main(void) {
    const char* st = "/mnt/c/Users/Kirill/OS/lab1/build/child";
    FILE* file = fopen("/mnt/c/Users/Kirill/OS/lab1/build/input.txt","r");
    ParentRoutine(st, file);
}
