#include <utils.hpp>

int main(int argc, char* argv[]){
    FILE* file = fopen(argv[0],"w");
    int n;
    int fl = 1;
    write(STDOUT_FILENO, &fl, sizeof(fl));
    while(1){
        read(STDIN_FILENO, &n, sizeof(n));
        if(check(n) == -1){
            fl = -1;
            write(STDOUT_FILENO, &fl, sizeof(fl));
            fclose(file);
            close(STDIN_FILENO);
            close(STDOUT_FILENO);
            return 0;
        }
        write(STDOUT_FILENO, &fl, sizeof(fl));
        fprintf(file,"%d\n", n);
    }
}
