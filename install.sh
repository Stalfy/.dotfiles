#!/usr/bin/env bash

# Installers
if ! command -v "curl" > /dev/null; then
    echo "Installing curl."
    sudo apt -y install curl
else
    echo "Curl OK!"
fi
#! Installers

# Vim
if ! command -v "vim" > /dev/null; then
    echo "Installing vim."
    sudo apt -y install vim
else
    echo "Vim OK!"
fi

if [ ! -d "$HOME/.vim" ]; then
    mkdir $HOME/.vim
fi

if [ ! -d "$HOME/.vim/autoload" ]; then
    echo "Installing plug-vim."
    mkdir $HOME/.vim/addons
    mkdir $HOME/.vim/autoload 
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "Plug-vim OK!"
fi

#! Vim

# Tools
if ! command -v "tree" > /dev/null; then
    echo "Installing tree"
    sudo apt -y install tree
else
    echo "Tree OK!"
fi

if ! command -v "fuck" > /dev/null; then
    echo "Installing fuck"
    sudo apt -y install python3-dev python3-pip python3-setuptools
    sudo pip3 install thefuck
else
    echo "Fuck OK!"
fi
#! Tools

# Others
if ! command "fortune" > /dev/null; then
    echo "Installing fortune."
    sudo apt -y install fortune
else
    echo "Fortune OK!"
fi
#! Others
