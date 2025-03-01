#include "minic-stdlib.h"

void main() {
  int n;
  int result;
  int i;

  // Read n from standard input
  n = read_i();

  result = 1;

  print_s((char*)"Factorial of ");
  print_i(n);
  print_s((char*)" is: ");

  // Compute factorial iteratively
  i = 1;
  while (i <= n) {
    result = result * i;
    i = i + 1;
  }

  print_i(result);
  print_s((char*)"\n");
}
