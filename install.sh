#!/bin/bash

########################

####### You can find the code here:
#### http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
#
#
green=`tput setaf 2`
reset=`tput sgr0`

xfce4_config_folder="~/.config/xfce4/xfconf/xfce-perchannel-xml"

dir=~/dotfiles
olddir=~/dotfiles_old
files="gvimrc tmux.conf config/nvim tmux/theme alacritty.yml vrapperrc ideavimrc gitconfig"

if [ ! -d ~/.config ]; then
	echo "Creating config directory"
	mkdir ~/.config
fi

if [ ! -d ~/.tmux ]; then
    echo "Creating ~/.tmux/"
    mkdir ~/.tmux
fi

echo "Creatig $olddir for backup of existing files"
mkdir -p $olddir
echo "#################"
echo "Done"

echo "${green}You need nodejs and pip3 installed${reset}"
cd $dir

for file in $files;
do
    echo "checking if there is a file or directory named $file"
    if [ -e ~/.$file ]; then
        echo "Movig $file to $olddir/"
        mv ~/.$file $olddir
        echo "Creating symlink to $file in home directory"
        ln -s $dir/$file ~/.$file
    else
        echo "Creating symlink to $file in home directory"
        ln -s $dir/$file ~/.$file
    fi

done
echo "moving xfce4 keyboard settings"

mv "$xfce4_config_folder/xfce4-keyboard-shortcuts.xml" $olddir/

echo "creating xfce4 keyboard config symlink"

ln -s "$dir/xfce4-keyboard-shortcuts.xml" "$xfce4_config_folder/xfce4-keyboard-shortcuts.xml"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

omf install l
omf theme l


