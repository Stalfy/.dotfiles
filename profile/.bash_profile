DOTFILE_PATH="$HOME/.dotfiles/system/.prompt"
if [ -e "$DOTFILE_PATH" ]; then
  echo "found it"
  . $DOTFILE_PATH
fi
