#!/bin/bash

func_install(){
    echo "Installing $1"
    sudo pacman -S --noconfirm --needed $1
}

list_pacman=(
    exa
    mdcat
)
list_yay=(
    dust
    bat
    fd
    neovim-nightly
)

for name in "${list_pacman[@]}" ; do
    func_install $name
done

for name in "${list_yay[@]}" ; do
    func_install $name
done
