#include "minic-stdlib.h"

void main(){
    int* pointer_to_int;
    pointer_to_int = (int*) mcmalloc(sizeof(int));
    *pointer_to_int = 2;
    print_i(*pointer_to_int);
}
