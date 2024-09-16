#!/bin/bash

conf="configs/"

rm ~/.gitconfig
ln "$conf".gitconfig ~/.gitconfig
git config --global user.email = "$1"

rm ~/.config/alacritty/alacritty.toml
ln "$conf"alacritty.toml ~/.config/alacritty/alacritty.toml

rm ~/.ideavimrc
ln "$conf".ideavimrc ~/.ideavimrc

rm ~/.oh-my-zsh/custom/aliases.zsh
ln "$conf"aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh

if [ "$2" == "-f" ]; then
    if [ "$3" == "nvim" ]; then
      rm -rf ~/.config/nvim
      cd ~/.config/
      ln -s ~/dotfiles/nvim nvim
    else
      if [ "$3" == "chad" ]; then
        rm -rf ~/.config/nvim/lua/custom
        cd ~/.config/nvim/lua/
        ln -s ~/dotfiles/custom custom
      else
        exit 1;
        echo "arg 2 was not nvim or chad"
      fi
    fi
    if [ $? -eq 0 ]; then
        echo "Replaced vim directory with current config"
    else
        echo "Error while trying to delete vim directory"
        exit 1
    fi
else
    echo "First arg was not -f, provide -f as the first arg for vim config deletion"
fi

curl -s https://raw.githubusercontent.com/juven/maven-bash-completion/master/bash_completion.bash >> ~/.mvn_completion.bash

echo "Configs setup ended"
