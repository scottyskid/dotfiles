#!/usr/bin/env bash


DOTFILES=$HOME/.dotfiles
BACKUP_DIR=$HOME/dotfiles-backup

echo "Creating backup directory at $BACKUP_DIR"
mkdir -p $BACKUP_DIR

files=''
for filename in "$HOME/.config/nvim.init" "$HOME/.vimrc" "$HOME/.zshrc" "$HOME/bin"; do
    if [ ! -L $filename ]; then
	echo "backing up $filename"
        mv -f $filename $BACKUP_DIR
    else
        echo -e "$filename does not exist at this location or is a symlink"
    fi
done
