---
marp: true
paginate: true
theme: default
class:
  - lead
  - invert
---

# Fulbright-Nehru Lectures
## 25 C/C++ Package and Application Distribution


Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
# C/C++ Code Distribution

- Source vs Executable vs Library
- Package Management Tool-specific Distribution Strategies
- Linux Distribution Repositories
- Source-based Distribution Strategies
- Containerized Distribution Options

-------------------------------
# Source vs Executable vs Library

- Distribute code via GitHub or similar public SCM - universally available, good tooling, and built-in versioning/tags/release capabilities
- Executables and libraries are best released to artifact repositories, especially those that can easily integrate with distribution-specific package managers
- CI/CD should manage both the tagging/releasing of source code and deployment to artifact repositories.

-------------------------------
# Package Management Tool-specific Distribution Strategies

- Based on your distribution you will need to create different file artifacts and content within them:
- Debian binary package content is compressed tar.gz file with .deb extension and the following content:
  - debian-binary - Contains the debian binary version currently "2.0\n"
  - data.tar.gz - This is all of the content to be installed
  - control.tar.gz - Contains at least the `control` and `md5sums` files
- Debian source packages can be packed and unpacked with dpkg
  - .orig.tar.gz - The original "universal" content of the source (.h, .cpp, .o, etc.)
  - .diff.gz - Any Debian-specific content
  - compressed file with extension `.dsc`

[1] [2]

-------------------------------
# Linux Distribution Repositories

- Some come with linux installation, which are the most trustworthy
- RPM-based systems: [3]
  - Use `dnf repolist` to list all active repositories
  - `dnf config-manager --add-repo http://www.example.com/example.repo` is how to add a repository
- Debian-based systems:
  - Can use the grep command and the filesystem to find active repos via `grep ^[^#] /etc/apt/sources.list /etc/apt/sources.list.d/*`
  - To add repositories the following commands can be used: [4]
  - sudo add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ saucy universe multiverse"
  - sudo add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ saucy-updates universe multiverse"

-------------------------------
# Source-based Distribution Strategies

- Distribute your code from a SCM repository service
- A README.md should be written for better understanding and usage description
- A INSTALL(.md) can be written to describe all ways that the source code can be installed
- CHANGELOG(.md) is a file that gives high-level details of changes made between releases
- A build system file such as CMakeList.txt and/or Makefile to simplify the installation process
- Optional content like man files/folders will improve user understanding of tool usage

-------------------------------
# Containerized Distribution Options

- A newer distribution pattern, usually requires Docker but could be less popular options such as rkt.
- Each container is like a mini-OS, 
- For services or processes that run constantly, you can launch them via tools such as docker or deploy configured collections of services via docker-compose or kubernetes.
- Can share host resources such as networking or file system to allow for spawning multiple copies of containers or maintain persisted data across launches.
- With commands like `docker exec -it` you can execute commands in the container and interact, which is very helpful for running executables or debugging.

-------------------------------
# Bibliography

1. Package Structure. (n.d.). Retrieved June 5, 2022, from https://tldp.org/HOWTO/Debian-Binary-Package-Building-HOWTO/x60.html.
2. Chapter 7. Basics of the Debian package management system. (n.d.). Retrieved June 5, 2022, from https://www.debian.org/doc/manuals/debian-faq/pkg-basics.en.html.
3. Sandra Henry-Stocker, &amp; Henry-Stocker, S. (2018, September 18). How to list repositories on linux. Network World. Retrieved June 5, 2022, from https://www.networkworld.com/article/3305810/how-to-list-repositories-on-linux.html 
4. Ubuntu documentation. Repositories/CommandLine - Community Help Wiki. (n.d.). Retrieved June 5, 2022, from https://help.ubuntu.com/community/Repositories/CommandLine.