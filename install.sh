#!/usr/bin/env bash
DF_PATH="$HOME/.dotfiles"

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

echo "°º¤ø,¸¸,ø¤º°°º¤ø,¸,ø¤º°°º¤ø,¸¸,ø¤º°°º¤ø,¸¸,ø¤º°°º¤ø,¸,ø¤º°°º¤ø,¸¸,ø¤º°"
echo "Adding dotfiles..."
cd $DF_PATH
. ./source.sh
cd $HOME
