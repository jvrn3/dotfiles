print_install() {
    	echo "###############################################################################"
    	echo "##################  $1"
}

font(){
    print_install "Installing Jetbrains Mono"
    curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh
}
