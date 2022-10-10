list=(
    tmux
    exa
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


distribution_type=`cat /etc/*release | grep -i '^ID_LIKE=' | cut -d= -f2`

if [[ "$distribution_type"  == "arch" ]]; then
    tput setaf 2; echo "you're using arch linux"
    sudo pacman -Syyu
    for name in "${list[@]}" ; do
        tput setaf 3;echo "Installing package " $name;tput sgr0;
        func_install $name
    done

    for name in "${list_yay[@]}" ; do
        tput setaf 3;echo "Installing package " $name;tput sgr0;
        yay_func_install $name
    done
fi


green=`tput setaf 2`
reset=`tput sgr0`
