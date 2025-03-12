#include "minic-stdlib.h"

struct s1{
    char a;
    char b;
    char c;
    char d;
};

struct s2{
    char a;
    struct s1 s;
    char b;
};

void main() {
    struct s2 s2;
    struct s1 s1;
    s2.s = s1;
}
