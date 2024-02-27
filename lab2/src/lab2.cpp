#include <lab2.h>

void cmp(int* b, int* c){
    int tmp;
    if(*b > *c){
        tmp = *b;
        *b = *c;
        *c = tmp;
    }
}

void shuffle(void* args){
    someargs* arg = (someargs*) args;
    int m = (- arg->l + arg->r + 1) / 2;
    for(int i = arg->l, j = arg->l; i < arg->r || j + m <= arg->r; i += 2, j++){
        arg->tmp->d[j] = arg->v->d[i];
        arg->tmp->d[j + m] = arg->v->d[i + 1];
    }
    for(int i = arg->l, j = arg->l; i <= arg->r || j <= arg->r; i++, j++){
        arg->v->d[i] = arg->tmp->d[j];
    }
}

void unshuffle(void* args){
    someargs* arg = (someargs*) args;
    int m = (- arg->l + arg->r + 1) / 2;
    for(int i = arg->l, j = arg->l; i < arg->l + m || j + 1 <= arg->r; j += 2, i++){
        arg->tmp->d[j] = arg->v->d[i];
        arg->tmp->d[j + 1] = arg->v->d[i + m];
    }
    for(int i = arg->l, j = arg->l; i <= arg->r || j <= arg->r; i++, j++){
        arg->v->d[i] = arg->tmp->d[j];
    }
}

void* sort_2(void* args){
    someargs* arg = (someargs*) args;
    if(arg->l == arg->r){
        return  NULL;
    }
    someargs u = (someargs){.v = arg->v, .l = arg->l, .r = arg->r, .tmp = arg->tmp};
    shuffle((void*) &u);
    int m = (arg->l + arg->r + 1) / 2;
    someargs u1 = {.v = arg->v, .l = arg->l, .r = m - 1, .tmp = arg->tmp};
    sort_2((void*) &u1);
    someargs u2 = (someargs){.v = arg->v, .l = m, .r = arg->r, .tmp = arg->tmp};
    sort_2((void*) &u2);
    unshuffle((void*) &u);
    for(int i = arg->l ; i < arg->r; i++){
        cmp(&arg->v->d[i], &arg->v->d[i + 1]);
    }
}

void sort_1(vector* v, int maxcount){
    int bi = bi_vector(v);
    vector tmp;
    init_vector(&tmp, lenth_vector(v));
    time_t begin = time(NULL);
    pthread_t threads[maxcount];
    someargs args[maxcount];
    int i;
    for(i = 2; maxcount > 0; i *= 2){
        maxcount -= i;
    }
    int j0 = lenth_vector(v)/(i/2) * 2 - 1;
    int i0 = (j0 + 1) / 2 * -maxcount;
    int z = -1;
    int z0 = 0;
    bool fl = false;
    for(int j = 1; j <= lenth_vector(v); j = j * 2 + 1){
        for(int i = 0; i <= lenth_vector(v) - j - 1; i = 1 + j + i){
            if(j >= j0 && i >= i0 && fl == false){
                fl = 	true;
                i0 = i;
            }
            if(fl){
                someargs u = (someargs){.v = v, .l = i, .r = i + j, .tmp = &tmp};
                shuffle((void*)&u);
                int m = (i + i + j + 1) / 2;
                z++;
                args[z] = (someargs){.v = v, .l = i, .r = m - 1, .tmp = &tmp};
                pthread_create(&threads[z], NULL, sort_2, (void*) &args[z]);
                z++;
                args[z] = (someargs){.v = v, .l = m, .r = i + j, .tmp = &tmp};
                pthread_create(&threads[z], NULL, sort_2, (void*) &args[z]);
            }
            if(!fl){
                someargs u = (someargs){.v = v, .l = i, .r = i + j, .tmp = &tmp};
                sort_2((void*) &u);
            }
        }
        if(fl){
            for(int i = z0; i <= z; i++){
                pthread_join(threads[i], NULL);
            }
            z0 = z + 1;
            for(int i = i0; i <= lenth_vector(v) - j - 1; i = 1 + j + i){
                someargs u = (someargs){.v = v, .l = i, .r = i + j, .tmp = &tmp};
                unshuffle((void*) &u);
                for(int k = i ; k < i + j; k++){
                    cmp(&v->d[k], &v->d[k + 1]);
               }
            }
            i0 = 0;
        }
    }
    debi_vector(v, bi);
    time_t end = time(NULL);
   // printf("Time %ld\n",end - begin);
    free(tmp.d);
}
