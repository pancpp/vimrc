#!/bin/bash
# This script install the dependencies of VIMRC to your system automatically.
# To be compatible to your system, please modify it accordingly.
# Root previledge is required.
# Usage:
#   sudo ./install-deps.sh

apt update
apt install -y \
    build-essential cmake \
    python python-dev python3 python3-dev \
    exuberant-ctags \
    vim
