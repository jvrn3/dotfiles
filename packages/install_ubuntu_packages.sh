#!/bin/bash


# TODO redirect errors

list_apt=(
    neofetch
    curl
    tmux
    exa
    fish
    cargo
    neovim
	calibre
    npm
   python3-pip
)

print_install() {
    	echo "###############################################################################"
    	echo "##################  $1"
}


func_install_ubuntu() {
	if dpkg -s $1 &> /dev/null; then
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
    	sudo apt-get install --yes  $1
    fi
}


if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


apt-get update
for name in "${list_apt[@]}" ; do
    tput setaf 3;echo "Installing package " $name;tput sgr0;
    func_install_ubuntu $name
done


curl -sL install-node.vercel.app/lts | bash
npm install --global yarn
 python3 -m pip install --user --upgrade pynvim
echo "Remember to install Bazik light orange theme"
