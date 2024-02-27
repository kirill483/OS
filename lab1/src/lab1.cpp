#include <utils.hpp>

int ParentRoutine(const char* pathToChild, FILE* stream){
    int pipe1[2];
    int pipe2[2];
    create_pipe(pipe1);
    create_pipe(pipe2);
    char* s = NULL;
    size_t size = 0;
    int k;
    k = getline(&s, &size, stream);
    s[k - 1] = '\0';
    pid_t pid = create_process();
    if(pid == 0){
        close(pipe1[1]);
        close(pipe2[0]);
        dup2(pipe1[0], STDIN_FILENO);
        dup2(pipe2[1], STDOUT_FILENO);
        execl(pathToChild, s, NULL);
    }
    else{
        close(pipe1[0]);
        int n;
        while(1){
            read(pipe2[0], &n, sizeof(n));
            if(n == -1){
                close(pipe1[1]);
                close(pipe2[0]);
                close(pipe2[1]);
                return 0;
            }
            fscanf(stream, "%d", &n);
            write(pipe1[1], &n, sizeof(n));
        }
    }
}
