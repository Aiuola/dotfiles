#!/bin/bash

conf="configs/"

# This shouldn't change often...
#rm ~/.gitconfig
#ln ./.gitconfig ~/.gitconfig

rm ~/.config/alacritty/alacritty.yml
ln "$conf"alacritty.yml ~/.config/alacritty/alacritty.yml

rm ~/.ideavimrc
ln "$conf".ideavimrc ~/.ideavimrc

rm ~/.bash_aliases
ln "$conf".bash_aliases ~/.bash_aliases

if [ "$1" == "-f" ]; then
    rm -rf ~/.config/nvim
    cd ~/.config/
    ln -s ~/dotfiles/nvim nvim

    if [ $? -eq 0 ]; then
        echo "Replaced vim direcotry with current config"
    else
        echo "Error while trying to delete vim directory"
        exit 1
    fi
else
    echo "First arg was not -f, call with -f for vim config deletion"
fi

echo "Configs setup ended"

