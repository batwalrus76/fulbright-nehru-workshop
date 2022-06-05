## Fulbright-Nehru Lecture 20 Build Tools

Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
## Linux Build Tools

- What is a Build Tool?
- History of Build Tools
- Make
- CMake
- Ant

-------------------------------
## What is a Build Tool?

- Build tools are meant to simplify the process of making executables, libraries, etc.
- They also attempt to have a uniform and well-documented process of describing a build
- Most allow Linux commands to be run
- Build tools fall into a few categories including Make-compatible, -incompatible, and script-based

-------------------------------
## History of Build Tools

- 1976 - Make [1]
- 2000 - Ant
- 2000 - CMake
- 2004 - Maven
- 2008 - Gradle
- 2014 - webpack
[2]

-------------------------------
## Make

- Make is the grandfather/mother of all build systems
- It is still in heavy usage and development, as it is very general usable
- The Makefile is used configure various targets, such as install and run
- Targets use a rule system to indicate target names, dependent targets, and input files (via regex)
- Supports a macro system for performing operations such as creating new variables from other variables 

[3]

-------------------------------
## CMake

- CMake uses a CMakelists.txt as the main configuration file.
- Purpose-built for use with C/C++
- Rules are executed in a linear fashion
- Rules are written as functions with a variety of arguments
- There are rules for adding included header files, linking of libraries, and the output executable

[4]

-------------------------------
## Ant

- Ant is generally targetted at Java developers
- The main file is build.xml
- Major parts of the buildfile are projects, targets, properties, and tasks
- Projects allow for specification of name, default target, and basedir
- Targets allow multiple tasks to be run within a project and have target dependencies
- Properties are a way to set variables for use internally, externally, paths, etc.
- Tasks are the part of the structure that execute specific commands such as mkdir, javac, and deletion of files/folders.

[5]

-------------------------------
## Bibliography

1. Jorge, J. (2019, November 25). An overview of build systems (mostly for C++ projects). Medium. Retrieved June 4, 2022, from https://julienjorge.medium.com/an-overview-of-build-systems-mostly-for-c-projects-ac9931494444 
2. Wikimedia Foundation. (2022, May 9). List of build automation software. Wikipedia. Retrieved June 4, 2022, from https://en.wikipedia.org/wiki/List_of_build_automation_software 
3. Linux make command information and examples. information and examples. (2021, November 6). Retrieved June 4, 2022, from https://www.computerhope.com/unix/umake.htm 
4. https://cmake.org/cmake/help/latest/guide/tutorial/index.html
5. Using Apache Ant. Apache Ant™ user Manual. (n.d.). Retrieved June 4, 2022, from https://ant.apache.org/manual/index.html.
