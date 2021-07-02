#!/bin/bash
##################################################################################
# Copyright (c) 2019 Leyuan Pan
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
# 
# Designed by Leyuan Pan (leyuanpan@gmail.com)
# 2016-09-12 16:55:32 PDT
#
# Summary:
#   This script install the VIMRC to your system automatically.
#   To be compatible to your system, please modify it accordingly.
##################################################################################

CP_VERBOSE= # -v
VIMVER=$(vim --version | grep -Po "(?<=Vi IMproved )[0-9].[0-9]")
VIMRC=${HOME}/.vimrc
VIMDIR=${HOME}/.vim
# backup old .vimrc and .vim
VIMRC_BAK=${HOME}/.vimrc_bak
VIMDIR_BAK=${HOME}/.vim_bak

# backup your own .vimrc and .vim folder
if [ -e "${VIMRC}" ]
then
    rm -rf ${VIMRC_BAK}
    mv ${VIMRC} ${VIMRC_BAK}
    echo "${VIMRC} has been moved to ${VIMRC_BAK} as a backup."
fi

if [ -d "${VIMDIR}" ]
then
    rm -rf ${VIMDIR_BAK}
    mv ${VIMDIR} ${VIMDIR_BAK}
    echo "${VIMDIR} has been moved to ${VIMDIR_BAK} as a backup."
fi

# vimrc: install VIMRC
cp ${CP_VERBOSE} vimrc ${VIMRC}
mkdir -p ${VIMDIR}/vimrc

# vimrc: install backup, swap and undo directories
mkdir -p ${VIMDIR}/runtime/backup
mkdir -p ${VIMDIR}/runtime/swap
mkdir -p ${VIMDIR}/runtime/undo

# vimrc: install base.vim
cp ${CP_VERBOSE} vim/vimrc/base.vim ${VIMDIR}/vimrc/

# vimrc: install filetype.vim
cp ${CP_VERBOSE} vim/vimrc/filetype.vim ${VIMDIR}/vimrc/
cp ${CP_VERBOSE} -R vim/vimrc/filetype ${VIMDIR}/vimrc/

# vimrc: install configurations for plugins
cp ${CP_VERBOSE} vim/vimrc/plugin.vim ${VIMDIR}/vimrc/
mkdir -p ${VIMDIR}/vimrc/plugin

# plugin: vim-pathogen
mkdir -p ${VIMDIR}/autoload
mkdir -p ${VIMDIR}/bundle
cp ${CP_VERBOSE} vim/autoload/pathogen.vim ${VIMDIR}/autoload/
cp ${CP_VERBOSE} vim/vimrc/plugin/pathogen.vim ${VIMDIR}/vimrc/plugin/

# plugin: nerdtree
cp ${CP_VERBOSE} -R vim/bundle/nerdtree ${VIMDIR}/bundle/
cp ${CP_VERBOSE} vim/vimrc/plugin/nerdtree.vim ${VIMDIR}/vimrc/plugin/

# plugin: ctags(exuberant-ctags)
cp ${CP_VERBOSE} vim/vimrc/plugin/ctags.vim ${VIMDIR}/vimrc/plugin/
#sudo apt-get install -y ctags
#sudo apt-get install -y exuberant-ctags

# plugin: taglist
mkdir -p ${VIMDIR}/plugin
cp ${CP_VERBOSE} vim/plugin/taglist.vim ${VIMDIR}/plugin/
cp ${CP_VERBOSE} vim/vimrc/plugin/taglist.vim ${VIMDIR}/vimrc/plugin/

# plugin: yankring
cp ${CP_VERBOSE} vim/vimrc/plugin/yankring.vim ${VIMDIR}/vimrc/plugin/

# plugin: install vim-colorschemes
cp ${CP_VERBOSE} -R vim/bundle/colorschemes ${VIMDIR}/bundle/

# plugin: install setcolors
cp ${CP_VERBOSE} -R vim/bundle/setcolors ${VIMDIR}/bundle/

# plugin: YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe.git ${VIMDIR}/bundle/YouCompleteMe
pushd ${VIMDIR}/bundle/YouCompleteMe
if [ $(echo "$VIMVER < 8.1"| bc) -eq 1 ]; then
    git checkout d98f896ada495c3687007313374b2f945a2f2fb4
fi
git submodule update --init --recursive
# ./install --clang-completer
./install.py
popd
cp ${CP_VERBOSE} vim/vimrc/plugin/youcompleteme.vim ${VIMDIR}/vimrc/plugin/

# copy docs
cp ${CP_VERBOSE} -R vim/doc ${VIMDIR}/

# Done!
date
echo INSTALLATION DONE!

