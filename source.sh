#!usr/bin/bash

## Sources the dotfiles and adds them to bashrc

# Creating links.
echo "Creating links..."
ln -sf --target-directory=$HOME $HOME/.dotfiles/sources/system/.prompt
ln -sf --target-directory=$HOME $HOME/.dotfiles/sources/system/.aliases
ln -sf --target-directory=$HOME $HOME/.dotfiles/sources/git/.gitconfig
ln -sf --target-directory=$HOME $HOME/.dotfiles/sources/git/.gitignore_global
ln -sf --target-directory=$HOME $HOME/.dotfiles/sources/vim/.vimrc

## Append dotfiles to end of bashrc.
echo "Appending dotfiles to .bashrc..."
cat <<EOT >> ~/.bashrc

if [ -d ~/.dotfiles ]; then
  eval $(thefuck --alias)
  . ~/.aliases
  . ~/.prompt
fi

fortune
EOT
