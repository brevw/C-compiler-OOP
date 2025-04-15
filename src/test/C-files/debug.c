#include "minic-stdlib.h"

/* 1. Struct definition */
struct Point {
    int x;
    int y;
    char label;
};

/* 2. Basic class with struct field */
class Shape {
    struct Point position;
    char type;

    void init(int x, int y, char t) {
        position.x = x;
        position.y = y;
        type = t;
    }

    char getType() {
        return type;
    }

    void printPosition() {
        print_s((char*)"Position: (");
        print_i(position.x);
        print_s((char*)", ");
        print_i(position.y);
        print_s((char*)")\n");
    }
}

/* 3. Extended class with char operations */
class Circle extends Shape {
    int radius;

    void initCircle(int x, int y, int r) {
        init(x, y, 'C');
        radius = r;
    }

    void printInfo() {
        print_s((char*)"Type: ");
        print_c(getType());
        print_s((char*)"\nRadius: ");
        print_i(radius);
        print_c('\n');
        printPosition();
    }

    char getSizeCategory() {
        char size;
        size = 'S';
        if (radius > 10) {
            size = 'L';
        } else {
            if (radius > 5) {
                size = 'M';
            }
        }
        return size;
    }
}

/* 4. Struct with character array */
struct Person {
    char name[20];
    int age;
    char initial;
};

/* 5. Class using struct with chars */
class Student {
    struct Person info;
    int grade;

    void initStudent(char* n, char i, int a, int g) {
        int idx;
        idx = 0;
        while (n[idx] != '\0' && idx < 19) {
            info.name[idx] = n[idx];
            idx = idx + 1;
        }
        info.name[idx] = '\0';
        info.initial = i;
        info.age = a;
        grade = g;
    }

    void printStudent() {
        print_s((char*)"Student: ");
        print_c(info.initial);
        print_s((char*)". ");
        print_s((char*) info.name);
        print_s((char*)" (");
        print_i(info.age);
        print_s((char*)") - Grade ");
        print_i(grade);
        print_c('\n');
    }

    char getFirstChar() {
        return info.name[0];
    }
}

void main() {
    /* Declarations for Test 1 */
    struct Point p;
    int temp_x;
    int temp_y;

    /* Declarations for Test 2 */
    class Shape s;

    /* Declarations for Test 3 */
    class Circle c;
    char sizeCat;

    /* Declarations for Test 4 */
    struct Person person;

    /* Declarations for Test 5 */
    class Student student;
    char firstLetter;

    /* Declarations for Test 6 */
    char letters[5];

    /* Declarations for Test 7 */
    char testChar;
    char resultChar;

    /* Declarations for Test 8 */
    class Shape s2;

    /* Test 1: Struct with char */
    temp_x = 10;
    temp_y = 20;
    p.x = temp_x;
    p.y = temp_y;
    p.label = 'A';

    print_s((char*)"Point label: ");
    print_c(p.label);
    print_s((char*)" at (");
    print_i(p.x);
    print_s((char*)", ");
    print_i(p.y);
    print_s((char*)")\n");

    /* Test 2: Basic class with struct */
    s = new class Shape();
    s.init(5, 5, 'S');
    print_s((char*)"Shape type: ");
    print_c(s.getType());
    print_c('\n');
    s.printPosition();

    /* Test 3: Extended class with char methods */
    c = new class Circle();
    c.initCircle(15, 15, 8);
    c.printInfo();
    sizeCat = c.getSizeCategory();
    print_s((char*)"Size category: ");
    print_c(sizeCat);
    print_c('\n');

    /* Test 4: Struct with char array */
    person.name[0] = 'J';
    person.name[1] = 'o';
    person.name[2] = 'h';
    person.name[3] = 'n';
    person.name[4] = '\0';
    person.initial = 'J';
    person.age = 20;

    /* Test 5: Class with struct operations */
    student = new class Student();
    student.initStudent((char*)"Alice", 'A', 18, 12);
    student.printStudent();
    firstLetter = student.getFirstChar();
    print_s((char*)"First letter: ");
    print_c(firstLetter);
    print_c('\n');

    /* Test 6: Character array manipulation */
    letters[0] = 'A';
    letters[1] = 'B';
    letters[2] = 'C';
    letters[3] = '\0';

    print_s((char*)"Letters: ");
    print_s((char*) letters);
    print_c('\n');

    /* Test 7: Struct in inheritance */
    s2 = (class Shape) new class Circle();
    s2.init(7, 3, 'O');
    print_s((char*)"Polymorphic type: ");
    print_c(s2.getType());
    print_c('\n');
}
