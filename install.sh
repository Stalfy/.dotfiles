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

if ! [ -n 'which atom' ]; then
    echo "Atom is not installed"
    echo "Installing Atom"
    sudo apt-add-repository -y ppa:webupd8team/atom
    sudo apt update
    sudo apt -y install atom
else
    echo "Atom OK!"
fi
