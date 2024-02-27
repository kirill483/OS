#include "utils.h"
#include "lab2.h"

int main(){
    vector v;
    int maxcount;
    scanf("%d", &maxcount);
    init_vector(&v, 4);
    push_vector(&v, 1);
    push_vector(&v, -1);
    push_vector(&v, 10);
    push_vector(&v, 0);
    sort_1(&v, maxcount);
    printf_vector(&v);
    free(v.d);
}
