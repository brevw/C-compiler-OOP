#include "minic-stdlib.h"

char* global_string;


void main() {
    global_string = (char*) "Hello, World!\n";
    print_s(global_string);
    return;
}
