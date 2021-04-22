// src/c/main_c.c

#include "asm.h"
#include "main_c.h"
#include "main_cpp.h"



int main_c(){
    int a = 10;
    int b = 20;
    int c = 0;

    c = asm_add(a, b);
    c = c_add(a, b);
    c = cpp_add(a, b);

    main_cpp();

    return 0;
}

int c_add(int a, int b){
    return a + b;
}
int c_sub(int a, int b){
    return a - b;
}