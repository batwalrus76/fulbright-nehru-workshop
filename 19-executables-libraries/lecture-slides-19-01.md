---
marp: true
paginate: true
theme: default
class:
  - lead
  - invert
---

# Fulbright-Nehru Lectures
## 19 Executables and Libaries

Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
# Linux Executables and Libaries

- Common Executable Types
- Libraries
- Installing C/C++ libraries
- Developing Libraries
- Developing Executables

-------------------------------
# Common Executable Types

- `.exe` - Typically a Windows OS executable type
- `.run` - Linux executable
- `.bin` - Unix executable
- `.bat` - DOS/Windows Batch file
- `.out` - C/C++ Compiled executable file

[1]

-------------------------------
# Libraries

- Header files (e.g. .h, .hpp)
  - often found in `include` folders based on purpose and level of access
  - for C/C++ programs use the `#include`
- Static Libraries (.lib (Windows) and .a (Linux))
  - often found in `lib` folders based on purpose and level of access
  - You will need to inform the linker during compilation/linking
- Dynamic/Shared Libraries (.dll (windows) and .so (Linux))
  - often found in `lib` folders based on purpose and level of access
  - The easiest way to tell the compiler to include is to set LD_LIBRARY_PATH to include folder with .dll/.so

[2]

-------------------------------
# Installing C/C++ libraries

- Use the Linux distribution's package manager to install the needed library
- Get the library source code and use configure/make command to put executables, headers, and/or libraries
- Manually build the library source code and place all output files into assocaited folders.
[2]

-------------------------------
# Developing Libraries

- For building libraries, consider which variables, functions, types, and classes you want to expose.
- Make sure all public variables, etc. is included in one or more header files
- Next determine if you want your library to be static or dynamic
- If dynamic then you will need to use `gcc`/`g++` in the following order:
  1. Compile into position-independent code (`-fpic` argument)
  2. Compile into shared library (`-shared` argument) [3]
- If static library, use the `-c` flag, by convention make the output extension `.so` [4]

-------------------------------
# Developing Executables

- Compiling and linking with `gcc` or other compilers is generally done with the `-o`.
- To be executable, the `.c` source code file needs a `main` function.
- Consider using command line arguments and parser code, to configure how the executable runs.
- If you want to be executable by all other users place in a folder that is part of the `PATH` environment variable.

-------------------------------
# Bibliography

1. Executable files. Executable File Formats. (n.d.). Retrieved June 4, 2022, from https://fileinfo.com/filetypes/executable. 
2. Alex. (2020, January 23). Learn C++. Retrieved June 4, 2022, from https://www.learncpp.com/cpp-tutorial/a1-static-and-dynamic-libraries/.
3. Shared libraries with GCC on linux. Shared libraries with GCC on Linux - Cprogramming.com. (n.d.). Retrieved June 4, 2022, from https://www.cprogramming.com/tutorial/shared-libraries-linux-gcc.html.
4. Creating a shared and static library with the GNU compiler (gcc). (n.d.). Retrieved June 4, 2022, from https://renenyffenegger.ch/notes/development/languages/C-C-plus-plus/GCC/create-libraries/index.