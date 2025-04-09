#include "minic-stdlib.h"

class Animal {
    int age;
    void init(int a) {
        age = a;
    }
    void speak() {
        print_s((char*)"Animal sound\n");
    }
    void printAge() {
        print_s((char*)"Age: ");
        print_i(age);
        print_c('\n');
    }
}

class Dog extends Animal {
    void speak() {
        print_s((char*)"Bark\n");
    }
}

class Labrador extends Dog {
    void speak() {
        print_s((char*)"Labrador bark\n");
    }
}

void main() {
    class Labrador lab;
    class Animal a;
    lab = new class Labrador();

    lab.init(5);
    lab.printAge();  // From Animal
    lab.speak();     // Should print "Labrador bark"

    // Test superclass casting
    a = (class Animal)lab;
    a.speak();       // Should still print "Labrador bark" (polymorphism)
}
