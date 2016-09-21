# VIMRC #

## Download ##
```bash
$ cd ~/Downloads
$ git clone https://leyuanpan@bitbucket.org/leyuanpan/vimrc.git
```

## Install ##
```bash
$ cd ~/Downloads/vimrc
$ cp vimrc ~/.vimrc
$ cp -R vim ~/.vim
```

## Plugin ##
The default plugins have been installed and configured in this repository include:

* [**vim-pathogen**](https://github.com/tpope/vim-pathogen)
* [**nerdtree**](https://github.com/scrooloose/nerdtree)
* [**vim-colorschemes**](https://github.com/flazz/vim-colorschemes)
* [**setcolors**](http://vim.wikia.com/wiki/Switch_color_schemes)

Recommended plugins:

### [**YouCompleteMe**](https://github.com/Valloric/YouCompleteMe) ###
Install development tools and CMake
```bash
$ sudo apt-get install build-essential cmake
```
Make sure you have Python headers installed
```bash
$ sudo apt-get install python-dev python3-dev
```
Compiling YCM without semantic support for C-family languages
```
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py
```

### **ctags** ###
Install ctags or exuberant-ctags. Note, selecting 'exuberant-ctags' instead of 'ctags', exuberant-ctags is already the newest version.
```bash
$ sudo apt-get install ctags
$ sudo apt-get install exuberant-ctags
```
Create tags with ctags in current folder.
```
$ ctags -R .
```