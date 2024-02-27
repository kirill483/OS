#pragma once

#include "stdio.h"
#include "stdlib.h"
#include "unistd.h"
#include "sys/wait.h"
#include <string.h>
#include "stdio.h"
#include "stdlib.h"
#include "unistd.h"
#include "sys/wait.h"

int check(int n);
int create_process();
int create_pipe(int* p);
