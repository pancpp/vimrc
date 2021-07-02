# VIMRC #

VIMRC is a simple vim configuration files and plugins for VIM users in Linux systems.

Note: this repo is transferred from https://github.com/michaelpan129/vimrc.git .

## Download ##
```bash
$ git clone https://github.com/pancpp/vimrc.git
```

## Automatically Install ##
```bash
$ sudo ./install-deps.sh
$ ./install
```

## Manually Install ##
```bash
$ cd vimrc
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
```bash
$ ctags -R .
```
Create tags of the source code in <Target_Folder> and store the tags file to $HOME/.vim/tags/<Target_Tags>.tags
```bash
$ ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f $HOME/.vim/tags/<Target_Tags>.tags <Target_Folder>
```
For example, I create tags for my linaro cross-compiler toolchain by the following code:
```bash
$ ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f $HOME/.vim/tags/toolchain.tags /usr/local/toolchain-2014.12-gcc4.9/linaro-armv7ahf-2014.12-gcc4.9/arm-linux-gnueabihf
```
And then, we have to let VIM know the existence of toolchain.tags. Open ctags.vim:
```bash
$ vim $HOME/.vim/vimrc/plugin/ctags.vim
```
and add the line at the end of the file as
```viml
set tags+=~/.vim/tags/toolchain.tags
```
