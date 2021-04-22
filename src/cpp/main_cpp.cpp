
// src/cpp/main_cpp

#include "asm.h"
#include "main_cpp.h"
#include "main_c.h"


class Rect
{
    private:
        int length;
        int width;
    public:
        Rect();
        Rect(int len, int wid);
        int getArea(void);
        // ~Rect(){}
};

Rect::Rect(){
    length = 0;
    width = 0;
}
Rect::Rect(int len, int wid){
    length = len;
    width = wid;
}

int Rect::getArea(void){
    return length * width;
}

// Rect::~Rect(){}


int main_cpp(void){
    int a = 10;
    int b = 20;
    int c = 0;

    c = asm_add(a, b);
    c = c_add(a, b);
    c = cpp_add(a, b);

    Rect rect(9, 9);

    c = rect.getArea();

    c = asm_add(a, b);
    c = c_add(a, b);
    c = cpp_add(a, b);

    main_c();

    return 0;
}

int cpp_add(int a, int b){
    return a + b;
}
int cpp_sub(int a, int b){
    return a - b;
}

