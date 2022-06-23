---
marp: true
paginate: true
theme: default
class:
  - lead
  - invert
---

# Install from source code part 1

To install recent Python (3.8+) from code:
1. Go to [Official Python Source Releases](https://www.python.org/downloads/source/).
2. Choose a Python version to download by right clicking the gzipped tarball link and copying the link.
3. Download the compressed source code via ```wget https://www.python.org/ftp/python/x/Python-x.tgz```
4. Extract the soure code folder using tar via ```tar -xvzf Python-x.tgz```.

-------------------------------
# Install from source code part 2

5. Change directory to the extracted directory.
6. Configure the build process, ```./configure```.
7. Compile the code, etc. ```make```.
8. Install the code, etc. ```make install```.

-------------------------------

# Install using dpkg

Perform the following steps, to install Visual Studio Code:

1. Go to [official VS Code images page](https://code.visualstudio.com/download).
2. Download appropriate .deb file.
3. ```dpkg -i code_*.deb```

-------------------------------

# Install and run marp

You will need to do the following things (don't worry if some of the provided commands don't make 100% sense, ask questions and long things up):

1. ```sudo apt``` _______ - Update apt indexes
2. ```sudo apt install``` _______ - Install nodejs and npm
3. ```nodejs --version``` - Determine the version of the Node language and CLI installer
4. ```npm i @marp-team/marp-cli``` - Use npm package manager (for Node) to install Marp, builds PowerPoint presentations from markdown.
5. ```marp --pptx 01-package-managers/lecture-slides-01.md``` - Build PPTX presentatiojn for lecture 01.
