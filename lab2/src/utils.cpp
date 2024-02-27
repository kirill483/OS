#include "utils.h"

void init_vector(vector* v, int k){
    v->d = (int*) malloc(sizeof(int) * k);
    v->size = 0;
    v->capacity = k;
}

void vector_resize(vector* v){
    v->capacity *= 2;
    v->d = (int*) realloc(v->d, sizeof(int) * v->capacity);
}

void push_vector(vector* v, int n){
    if(v->capacity == v->size){
        vector_resize(v);
    }
    v->d[v->size] = n;
    v->size++;
}

void pop_vector(vector* v){
    v->size--;
}

int lenth_vector(vector* v){
    return v->size;
}

void printf_vector(vector* v){
    for(int i = 0; i < lenth_vector(v); i++){
        printf("%d ", v->d[i]);
    }
    printf("\n");
}

int bi_vector(vector* v){
    float n = lenth_vector(v);
    int k = 0;
    while(n > 1){
        n /= 2;
        k++;
    }
    k = pow(2, k) - lenth_vector(v);
    for(int i = 0; i < k; i++){
        push_vector(v, INT_MAX);
    }
    return k;
}

void debi_vector(vector* v, int k){
    for(int i = 0; i < k; i++){
        pop_vector(v);
    }
}
