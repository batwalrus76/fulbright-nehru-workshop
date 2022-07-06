---
marp: true
paginate: true
theme: default
class:
  - lead
  - invert
---

# Fulbright-Nehru Lectures
## 13 Linux Shells and Environment Variables


Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
# What is a Linux Shell?

- "The shell is a program that takes commands from the keyboard and gives them to the operating system to perform" [1]
- In the past, the operating system was only a CLI shell.
- Now, aside from root shells exposed in boot up or safe mode, terminals are housed in GUIs (terminals).
- Popular shells are sh, bash, ksh, zsh, and csh

-------------------------------

# The History of Shells

- The grandfather of all shells is the Thompson Shell, tsh.
- The next iteration was the Bourne Shell (1979), bash, which has been the default shell for many years.
- Csh (Late 70's) added aliases, history, job/process management. It was written in C and had issues.
- Bash was used as the interactive shell with csh as a programming shell.
- Ksh attempted to replace csh but was built on bash. Strangely while it was released in 1982, it wasn't free until the 2000's.
- New shells have sprouted up, usually building on bash.

[2]

-------------------------------

# How is that different from a terminal?

- "A program that opens a window and lets you interact with the shell" [1]
- Some examples are xterm, konsole, iTerm, and gnome-terminal
- Each terminal provides different features including window management, sessions, themes, and centralized configuration management

-------------------------------

# The Next Generation of Shells and Terminals

- Newer shells such as fish, oh-my-zsh, etc. provide plugins that integrate with linux services and applications.
- With terminal multiplexers such as screen and tmux, shell sessions/sockets can be shared and scripted.
- Integrations with git, system statistics, and other tools can make a terminal into a dashboard

-------------------------------

# How do Shells differ?

- Shells can be run in an ongoing or used to execute single commands or scripts
- csh and bash and their offspring, generally differ in how they are interacted with and programmed.
- Some shells have slightly different mechanisms for navigation, jumping to different locations, stopping processes, etc.
- Shells commands can be strung together to be executed in conjunction with each other
- Alternatively, based on the shell scripts can allow for running commands in loops, in the fore/background, and call other language-based commands

-------------------------------

# Shell Building Blocks

- Pipes `|` - Connecting the standard output of one command as the standard input to another
- Redirects `> and >>` - Write and append standard output to files
- `&&` - Execute commands together, each of them require all previous commands to complete, the output being boolean and
- `||` - Execute commands together and all will execute, the output being boolean or
- `if then else fi` - Conditional branching
- `for do done` - Loop over range or array
- `&` - run command in the background
- `watch` command that will run a command repeatedly at different intervals

-------------------------------

# Environment Variables

- Once you open your terminal/shell, you will have environment variables.
- By convention, they are capitalized and camel-cased (e.g. APP_HOME).
- They are available to the terminal and any application that can read from the operating system.
- They can be built up and use other environment variables (e.g. PATH=$PATH:$HOME/bin)
- There are numerous special environment variables such as PATH, HOME, SHELL)

-------------------------------

# Aliases

- Basically they all you to alias a complex command into an executable name
- The name of the executable can be anything but often very short and easily understood
- The command can pretty much be any executable with args and even multiple commands piped together
- The syntax to create an alias is `alias name="command(s) with args"`
- `alias psag="ps aux | grep"`

-------------------------------

# Bibliography

- Shotts, W. E. (n.d.). What is "The shell"? Learning the shell - Lesson 1: What is the shell? Retrieved May 16, 2022, from https://linuxcommand.org/lc3_lts0010.php
- Hoffman, C. (2017, June 20). What's the difference between bash, zsh, and other linux shells? Retrieved May 16, 2022, from https://www.howtogeek.com/68563/htg-explains-what-are-the-differences-between-linux-shells/
