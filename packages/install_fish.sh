print_install() {
    	echo "###############################################################################"
    	echo "##################  $1"
}

fish_shell(){
    print_install "Setting fish shell as default"
    chsh -s /usr/bin/fish
    print_install "Installing oh my fish"
    curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
}
