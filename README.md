# VIMRC #

VIMRC is a simple vim configuration files and plugins for VIM users in Linux system.

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
The default plugins those have been installed and configured in this repository include:

* [**vim-pathogen**](https://github.com/tpope/vim-pathogen)
* [**nerdtree**](https://github.com/scrooloose/nerdtree)
* [**vim-colorschemes**](https://github.com/flazz/vim-colorschemes)
* [**setcolors**](http://vim.wikia.com/wiki/Switch_color_schemes)

It is highly recommended to install the following plugins for C programmers.
### [**YouCompleteMe**](https://github.com/Valloric/YouCompleteMe) ###
Install development tools and CMake
```bash
$ sudo apt-get install build-essential cmake
```
Make sure you have Python headers installed
```bash
$ sudo apt-get install python-dev python3-dev
```
Download YouCompleteMe (YCM)
```bash
$ cd ~/.vim/bundle
$ git clone https://github.com/Valloric/YouCompleteMe.git
$ cd ~/.vim/bundle/YouCompleteMe
$ git submodule update --init --recursive
```
Compiling YCM without semantic support for C-family languages
```bash
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py
```
For VIM prior to version 7.4.107, a [UltiSnips bug](https://github.com/Valloric/YouCompleteMe/issues/2337) blocks YouCompleteMe. To fix this bug, it is recommended to upgrade your VIM to newer version. If you are using Ubuntu 14.04, the official repository may be providing the version below 7.4.107. Before continuing to read the following manual, you may want to check your VIM version by command:
```bash
$ vim --version
```
If the version is prior to 7.4.107, you may want to upgrade it by the following method.
```bash
$ sudo apt-get purge --auto-remove vim
$ sudo add-apt-repository ppa:pkg-vim/vim-daily
$ sudo apt-get update
$ sudo apt-get install vim
```
This repository provides the unstable version of VIM with daily build. After updating VIM, re-install YouCompleteMe following above procedures.

### [**ctags**](http://ctags.sourceforge.net/) ###
Install ctags or exuberant-ctags. Note, selecting 'exuberant-ctags' instead of 'ctags', exuberant-ctags is already the newest version.
```bash
$ sudo apt-get install ctags
$ sudo apt-get install exuberant-ctags
```
Create tags in current folder.
```
$ ctags -R .
```