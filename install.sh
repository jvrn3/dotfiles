#!/bin/bash

########################

####### You can find the code here: 
#### http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

dir=~/dotfiles
olddir=~/dotfiles_old
files="gvimrc tmux.conf vimrc config/nvim tmux/theme "

if [ ! -d ~/.config ]; then
	echo "Creating config directory"
	mkdir ~/.config
fi
if [ ! -d ~/.tmux]; then
    echo "Creating ~/.tmux/"
    mkdir ~/.tmux

echo "Creatig $olddir for backup of existing files" 
mkdir -p $olddir
echo "#################"
echo "Done"

echo "You should have nodejs and pip3 installed"
cd $dir

for file in $files; do
    echo "checking if there is a file named $file"
    if [ -f $file ]; then
        echo "Movig $file to $olddir/"
        mv ~/.$file $olddir
    fi
	echo "Creating symlink to $file in home directory"
	ln -s $dir/$file ~/.$file
done
