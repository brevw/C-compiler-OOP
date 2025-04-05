#include "minic-stdlib.h"

// Define a simple struct
struct Age {
    char age;
    int age2;
};

struct Person {
    struct Age age;
    int height;
};

void print(struct Person p) {
    print_s((char*)"Person's age char: ");
    print_c(p.age.age);
    print_s((char*)"\n");

    print_s((char*)"Person's age: ");
    print_i(p.age.age2);
    print_s((char*)"\n");

    print_s((char*)"Person's height: ");
    print_i(p.height);
    print_s((char*)" cm\n");
}

void main() {
    struct Person p;

    // Assign values
    p.age.age = 'A';
    p.age.age2 = 10;
    p.height = 170;

    print(p);

}
