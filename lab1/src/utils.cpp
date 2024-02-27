#include <utils.hpp>

int check(int n){
    if(n <= 2){
        return -1;
    }
    int k = 0;
    for(int i = 2; i * i <= n; i++){
        if(n % i == 0){
            k++;
        }
    }
    if(k == 0){
        return -1;
    }
    return 0;
}

int create_process(){
    pid_t pid = fork();
    if(pid == -1){
        perror("fork");
        exit(-1);
    }
    return pid;
}

int create_pipe(int* p){
    if(pipe(p) == -1){
        return -1;
    }
    return 0;
}
