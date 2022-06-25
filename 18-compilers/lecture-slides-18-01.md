---
marp: true
paginate: true
theme: default
class:
  - lead
  - invert
---

# Fulbright-Nehru Lectures
## 18 Compilters


Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
# Compilers

- Why do we need compilers?
- How do we use compiled objects and executables?
- cc
- gcc
- g++
- tcc

-------------------------------
# Why do we need compilers?

- We are humans and modern programming languages are higher-level and are written for humans to read
- You have multiple files and library dependencies
- You want your executable code to be written for specific or general use
- You may want to convert your code from one language into another

[1]

-------------------------------
# How do we use compiled objects and executables?

- We use a compiler to take all of the code we have written in multiple files (source and header) and create object files.
- Object files act as a near term library, which can be reference from other source code files.
- Object files include all of the machine code needed to execute the various functions, use constant memory objects, etc.
- Object files can then be linked/compiled into an executable file.

-------------------------------
# cc

- The C compiler is often aliased to gcc, g++, or clang.
- CC is meant to be aliased to the default c compiler executable for a given machine
- Almost all Linux distributions will include cc by default, since the OS will need to compile things

[2]

-------------------------------
# gcc

- The GNU C compiler
- It is the most common C compiler
- Be careful to recognize if this command is aliased to clang, which is functionally the same but you may not want to use it
- The `-c` argument compiles/assembles the source code files into with the same file name but with a `.o` extension.
- The `-o` argument outputs the file to the corresponding file name, whether it is a .exe, .h, etc. This will tell the compiler that if what is given as the source file can be compiled/linked into an executable it will attempt to do so.

[3]

-------------------------------
# g++

- The GNU C++ compiler
- To be honest, the only easily recognized difference is that it is designed to use `.cpp` files instead of `.c`.
- Most commands work like `gcc`, this is by design to encourage C developers to easily transition to from gcc to g++.

-------------------------------
# tcc

- The Tiny C compiler
- Built to compile C code in environments that require it and its code to take up little disk space.
- Has checks for vulnerability scanning of memory and out of bounds bugs.
- Can add shebang `#!/usr/local/bin/tcc -run` to start of files with main functions to be able to be executed directly from the command line.
- Has been used for compiling code within browser terminal/IDE applications

[4]

-------------------------------
# Bibliography

1. Sheldon, R. (2022, April 29). What is a compiler? WhatIs.com. Retrieved June 3, 2022, from https://www.techtarget.com/whatis/definition/compiler 
2. CC Command in linux with examples. GeeksforGeeks. (2019, May 15). Retrieved June 3, 2022, from https://www.geeksforgeeks.org/cc-command-in-linux-with-examples/ 
3. Overall options (using the GNU compiler collection (GCC)). (n.d.). Retrieved June 3, 2022, from https://gcc.gnu.org/onlinedocs/gcc-12.1.0/gcc/Overall-Options.html#Overall-Options 
4. TCC: Tiny C Compiler. TCC : Tiny C compiler. (n.d.). Retrieved June 3, 2022, from https://bellard.org/tcc/ 