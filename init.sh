#!/bin/bash

conf="configs/"

# This shouldn't change often...
#rm ~/.gitconfig
#ln "conf".gitconfig ~/.gitconfig

rm ~/.config/alacritty/alacritty.yml
ln "$conf"alacritty.yml ~/.config/alacritty/alacritty.yml

rm ~/.ideavimrc
ln "$conf".ideavimrc ~/.ideavimrc

rm ~/.bash_aliases
ln "$conf".bash_aliases ~/.bash_aliases

if [ "$1" == "-f" ]; then
    if [ "$2" == "nvim" ]; then
      rm -rf ~/.config/nvim
      cd ~/.config/
      ln -s ~/dotfiles/nvim nvim
    else
      if [ "$2" == "chad"]; then
        rm -rf ~/.config/nvim/lua/custom
        cd ~/.config/nvim/lua/
        ln -s ~/dotfiles/custom custom
      else
        exit 1;
        echo "arg 2 was not nvim or chad" 
      fi
    fi

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

