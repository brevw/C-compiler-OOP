# C Compiler #

A C compiler that compiles a subset of the C language and that extends it to support Object Oriented Programming. <br>
The current syntax grammar for the language can be found here [grammar](./description/syntax_grammar.txt). The modified LL(K) left parsable syntax can be found here [llk_grammar](./src/java/parser/syntax_grammar.txt). <br>
The abstract syntax nodes for the current compiler implementation are in the following grammar [as_grammar](./description/abstract_syntax_grammar.txt). <br>
The compiler is stricter than the standard C as it is strongly typed and will never do autocasting ([typing rules](./description/typing-rules/rules.pdf)). <br> <br>
The compiler targets MIPS, so we will the Mars MIPS simulator to run compiled code and tests. <br>
The register allocator currently uses Chaitin's algorithm and only uses `$s and $t architecture registers`.

<br> Built-in functions
```C
void print_s(char* s);
void print_i(int i);
void print_c(char c);
char read_c();
int read_i();
void* mcmalloc(int size);
```

Example of a C file that can be compiled:
```C
#include "minic-stdlib.h"

class Counter {
    int value;

    void init(int start) {
        value = start;
    }

    void increment() {
        value = value + 1;
    }

    void print() {
        print_s((char*)"Counter value: ");
        print_i(value);
        print_s((char*)"\n");
    }
}

class FancyCounter extends Counter {
    void increment() {
        // Increments by 2 instead of 1
        value = value + 2;
    }

    void print() {
        print_s((char*)"FancyCounter value: ");
        print_i(value);
        print_s((char*)"\n");
    }
}

void main() {
    class Counter c;
    class FancyCounter fc;
    int i;

    c = new class Counter();
    fc = new class FancyCounter();

    c.init(0);
    fc.init(10);

    i = 0;

    while (i < 3) {
        c.increment();
        fc.increment();
        c.print();
        fc.print();
        i = i + 1;
    }
}
```

## Requirements ##

A recent JDK version (version 21 or higher)
```bash
$ javac -version
```
<br> Any recent Apache Ant as the build system
```bash
$ ant -version
```
* https://ant.apache.org/manual/install.html
* brew for macos

## Building the Compiler ##

We will use the Ant build file (`build.xml`)
```bash
$ ant build
```
This command outputs compiler in a directory called `bin` within the project structure.
Thereafter, you can run the compiler from the commandline:
```
Usage: java Main4 pass inputfile [outputfile]
where pass is either: -lexer, -parser, -ast, -sem, -gen [naive|colour], -regalloc naive|colour
if -ast, -gen or -regalloc is chosen, the output file must be specified
```

You can clean the `bin` directory by typing:
```bash
$ ant clean
```
This command effectively deletes the `bin` directory.

## Running the Compiler ##

To run the compiler, use the following command:
```bash
$ java -cp bin Main4 -gen colour path_to_c_source_file path_to_asm_output_file
```

Run the asm file on the MIPS simulator
```bash
$ java -jar ./description/Mars4_5.jar sm nc me path_to_asm_file
```

## Running tests ##
If you are using macos, you need to install extra packages using brew as we use `timeout`
```bash
$ brew install coreutils
```

By default the shell script will run on bash but running it on zsh is better as the latter supports displaying colors on the terminal.
So if you want to use zsh you need to modify the first two lines in the script located at `./src/test/auto-test.sh`
```bash
#!/bin/zsh
INTERPRETER="ZSH"
...
```

To run the test script
```bash
$ chmod +x ./src/test/auto-test.sh
$ ./src/test/auto-test.sh
```
