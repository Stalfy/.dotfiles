#!/usr/bin/env bash
if ! command -v "vim" > /dev/null; then
    echo "Vim is not installed." 
    echo "Installing Vim"
    sudo apt-get -y install vim
else
    echo "Vim OK!"
fi

if ! [ -n 'which Java' ]; then
  echo "Java is not installed."
  echo "Installing Java"
  sudo apt-get -y install latest-jre
  sudo apt-get -y install latest-jdk
else
  echo "Java OK!"
fi

if ! command -v "tree" > /dev/null; then
    echo "tree is not installed." 
    echo "Installing tree"
    sudo apt-get install tree
else
    echo "tree OK!"
fi
