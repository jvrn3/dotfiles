#!/bin/bash

########################

####### You can find the code here: 
#### http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

dir=~/dotfiles
olddir=~/dotfiles_old
files="gvimrc tmux.conf vimrc config/nvim"

echo "Creatig $olddir for backup of existing files" 
mkdir -p $olddir
echo "#################"
echo "Done"

cd $dir

for file in $files; do
	echo "Movig old files to $olddir"
	mv ~/.$file $olddir 
	echo "Creating symlink to $file in home directory"
	ln -s $dir/$file ~/.$file
done
