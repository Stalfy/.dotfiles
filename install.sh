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
    sudo apt-get -y install vim
else
    echo "Vim OK!"
fi

if [ -d "$HOME/.vim" ]; then
   if [ ! -d "$HOME/.vim/autoload" ]; then
        echo "Installing plug-vim."
        mkdir $HOME/.vim/addons
        mkdir $HOME/.vim/autoload 
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    else
        echo "Plug-vim OK!"
    fi
fi
#! Vim

# Programming Languages
if ! [ -n 'which Java' ]; then
  echo "Installing Java."
  sudo apt-get -y install latest-jre
  sudo apt-get -y install latest-jdk
else
  echo "Java OK!"
fi
#! Programming languages

# Tools
if ! command -v "tree" > /dev/null; then
    echo "Installing tree"
    sudo apt-get -y install tree
else
    echo "Tree OK!"
fi

if ! [ -n 'which pylint3' ]; then
  echo "Installing pylint3."
  sudo apt-get -y install pylint3
else
  echo "Pylint3 OK!"
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
