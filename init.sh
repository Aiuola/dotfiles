#!/bin/bash

if [ "$1" == "-f" ]; then
    rm -rf ~/.config/nvim/
    ln -s nvim/ ~/.config/nvim/

    if [ $? -eq 0 ]; then
        echo "Replaced vim direcotry with current config"
    else
        echo "Error while trying to delete vim directory"
        exit 1
    fi
else
    echo "First arg was not -f, call with -f for vim config deletion"
fi

# This shouldn't change often...
# Commented out because probably your key will be here and it shouldn't be
# overridden
#rm ~/.gitconfig
#ln ./.gitconfig ~/.gitconfig

conf="configs/"

rm ~/.config/alacritty/alacritty.yml
ln "$conf"alacritty.yml ~/.config/alacritty/alacritty.yml

rm ~/.ideavimrc
ln "$conf".ideavimrc ~/.ideavimrc

rm ~/.bash_aliases
ln "$conf".bash_aliases ~/.bash_aliases

echo "Configs setup ended"

