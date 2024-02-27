#pragma once

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <limits.h>
#include <pthread.h>
#include <time.h>
#include <stdbool.h>
#include <unistd.h>

typedef struct{
    int* d;
    int size;
    int capacity;
} vector;

typedef struct{
    vector* v;
    int l;
    int r;
    vector* tmp;
} someargs;

void init_vector(vector* v, int k);
void vector_resize(vector* v);
void push_vector(vector* v, int n);
void pop_vector(vector* v);
int lenth_vector(vector* v);
void printf_vector(vector* v);
int bi_vector(vector* v);
void debi_vector(vector* v, int k);
void cmp(int* b, int* c);
void shuffle(void* args);
void unshuffle(void* args);
void* sort_2(void* args);
