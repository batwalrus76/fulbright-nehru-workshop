---
marp: true
paginate: true
theme: default
class:
  - lead
  - invert
---

# Fulbright-Nehru Lectures
## 12 Package Managers


Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
## <!--fit--> What are Package Managers?

- They manage the distribution of libraries, resources, and executables for operating systems (OS's).
- They provide built-in secure capabilities such as checksums, local and trusted repositories, and connections
- For linux, they are numerous options and some are OS-specific

-------------------------------
## <!--fit--> What is the Common Alternative to Package Managers?

- Distribution of code can be done via FTP and HTTP source repositories
- You will need to configure how the source will be compiled ```./configure```
- Next you can compile any executables, libraries, and configuration files ```make```
- Lastly, you want to install everything you have built in locations so they can be used  ```make install```
- To be safe, when downloading zipped or tar-gzippped files generate a checksum for the compressed file and only use it when it matches the published value
- Not hard but it might be nice to have a tool to handle this

-------------------------------
## Ubuntu Package Managers

- dpkg - Debian-based basic package manager
- Apt (in the past there were a few apt-related executables) - Better generic package manager
- Aptitude - UI version of Apt
- Snap - Pretty new universal Linux package manager

-------------------------------
## How to get packages?

- Retrieve .deb package files (for use with ```dpkg```)
- Apt comes with package repos but they can be added via:
  - ```deb http://repository.com/ubuntu distro-name [universe|multiverse]``` - universe/multiverse package repo
  - ```deb-src http://repository.com/ubuntu distro-name [universe|multiverse]``` - universe/multiver source repo

-------------------------------
## dpkg Commands

- ```dpkg -l``` - List available packages
- ```sudo dpkg -i package.deb``` - Install package via .deb file
- ```sudo dpkg -r package``` - Remove dpkg installed package

-------------------------------
## Apt Commands

- ```sudo apt install package``` - Install a package (multiple packages can be added at the same time)
- ```sudo apt remove package``` - Uninstall an installed package
- ```sudo apt update``` - Update the package index
- ```sudo apt upgrade``` - Upgrade all apt installed packages

-------------------------------

## Languages have Package Managers too!

- Node - npm
- Java - maven
- Python - pip/poetry
- C/C++ - Conan, though apt, etc. also help with this as well

-------------------------------

## Bibliography

- [Package Management](https://ubuntu.com/server/docs/package-management)
- [Installing Software](https://help.ubuntu.com/community/InstallingSoftware?_ga=2.4274099.1457497048.1649023980-1171676718.1649023980)
