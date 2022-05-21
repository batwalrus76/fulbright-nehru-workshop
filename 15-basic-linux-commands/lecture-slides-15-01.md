## Fulbright-Nehru Lecture 15 Basic Linux Commands

Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
## Linux Commands

- Listing Files
- Creating Files/Folders
- Filesystem Permissions
- Moving through the Filesystem
- Text Processing
- Process Management

-------------------------------
## Listing Files

- `ls [-options] <filesystem location>` - List the contents of the filesystem location
    - `-l` long format
    - `-a` include hidden files (starting with '.' character)
- `ll [-options] <filesystem location>` - Same as above but `ls -la`
- tree [-options] <filesystem location>` - Traverse the passed filesystem location's directory tree

-------------------------------
## Filesystem management 1

- `touch <filesystem location>` - Create a file at the location specified, owned by the current user and their default group.
- `mkdir <filesystem location>` - Make a directory at the location specified, owned by the current user and their default group.
- `rm [-options] <filesystem location>*` - Remove one or more files/directories
    - `-R` - recursively
    - `-f` - force (use this with caution

-------------------------------
## Filesystem management 2

- `rmdir <filesystem location>*` - Remove all empty specified directories
- `cp [-options] <filesystem location>* <destination filesystem location>` - Copy one or more files to the file or destination folder
- `mv [-options] <filesystem location>* <destination filesystem location>` - Move one or more files to the file or destination folder
- `ln [-options] <target filesystem location>* <destination filesystem location>` - Create a new directory from source file
    - `s` - Create a symbolic link (keeping the file/folder at its original location)

-------------------------------
## Filesystem Permissions

- `chown <username>[:<group>] [-options] <filesystem location>*` - Change ownership to user and optionally group for one or more files
- `chgrp [-options] <group> <filesystem location>*` - Change the group ownership of one or more files
- `chmod [-options] <mode> <filesystem location>*` - Change the permissions mode for one or more files
    - numeric representation `ogw` (owner-group-world) - generally 3 bits (in descending value - rwx)
    - symbolic mode - much more complex, look at the man page for specifics

-------------------------------
## Moving through the Filesystem

- `~` - Change to the current user's home directory
- `cd <filesystem location>` - Change to the specified location
- `pushd <filesystem location>` - Push the current directory onto a stack of directories and change to the filesystem location
- `popd <filesystem location>` - Change to the directory at the top of the directory stack, which is removed

-------------------------------
## Text Processing

- `grep` - Search a file or standard input for all occurences of a regular file
- `sed` - edit a file or standard input
- `awk` - scan a file or standard input for lines matching a pattern

-------------------------------
## Process Management

- `ps [-options]` - Get the status of running processes
    - `-a` - Look at all processes (not just your own)
    - `-u` - Include username in the results
- `top` - Display a sorted list of processes (by default those using the most CPU)
- `kill <-signal_name or number> pid` - Terminate/Send a signal to a running process
    - `-1` - Kill all processes if super user
    - `-2` - interrupt
    - `-3` - quit
    - `-9` - kill
- `killall` - Like above but instead of pid, kill by process name
    - Good for killing processes based service, processing language, cli tool (e.g. java, docker, etc.)

-------------------------------
## Most Important Command

- `man command` - Open the manual for the command, which is not always available

