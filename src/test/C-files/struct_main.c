#include "minic-stdlib.h"

// Define a simple struct
struct Person {
  int age;
  int height;
};

void main() {
  struct Person p;

  // Assign values
  p.age = 25;
  p.height = 175;

  // Print struct values
  print_s((char*)"Person's age: ");
  print_i(p.age);
  print_s((char*)"\n");

  print_s((char*)"Person's height: ");
  print_i(p.height);
  print_s((char*)" cm\n");
}
