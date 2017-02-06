#!usr/bin/bash

## Sources the dotfiles and adds them to bashrc

# Creating links.
echo "Creating links..."
ln -sf --target-directory=$HOME $HOME/.dotfiles/system/.prompt
ln -sf --target-directory=$HOME $HOME/.dotfiles/system/.aliases
ln -sf --target-directory=$HOME $HOME/.dotfiles/git/.gitconfig

## Append dotfiles to end of bashrc.
echo "Appending dotfiles to .bashrc..."
cat <<EOT >> ~/.bashrc
if [ -d ~/.dotfiles ]; then
  . ~/.aliases
  . ~/.prompt
  . ~/.gitconfig
fi
EOT
