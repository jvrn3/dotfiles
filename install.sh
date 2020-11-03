#!/bin/bash

########################

####### You can find the code here:
#### http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

list=(
    tmux
    exa
    mdcat
    docker
    fish
    alacritty
)

list_yay=(
    dust
    bat
    fd
    neovim-nightly
    spotify
)

xfce4_config_folder="~/.config/xfce4/xfconf/xfce-perchannel-xml"

func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}
yay_func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo yay -S --noconfirm --needed $1
    fi
}
sudo pacman -Syyu

distribution=`cat /etc/*release | grep -i '^ID' | awk '{print $1}'`
for name in "${list[@]}" ; do
	tput setaf 3;echo "Installing package " $name;tput sgr0;
	func_install $name
done

for name in "${list_yay[@]}" ; do
	tput setaf 3;echo "Installing package " $name;tput sgr0;
	yay_func_install $name
done

echo ${distribution}

green=`tput setaf 2`
reset=`tput sgr0`
dir=~/dotfiles
olddir=~/dotfiles_old
files="gvimrc tmux.conf config/nvim tmux/theme alacritty.yml"

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

echo "Need to install oh my fish"
