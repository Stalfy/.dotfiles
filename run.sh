#!/usr/bin/env/ bash
DF_PATH=$HOME/.dotfiles

cd $DF_PATH
  echo "Installing softwares (install.sh)..."
  sh install.sh
  echo "°º¤ø,¸¸,ø¤º°°º¤ø,¸,ø¤º°°º¤ø,¸¸,ø¤º°°º¤ø,¸¸,ø¤º°°º¤ø,¸,ø¤º°°º¤ø,¸"
  echo "Adding dotfiles to bashrc (source.sh)..."
  sh source.sh
  echo "Installer ran successfully!"
cd $HOME
