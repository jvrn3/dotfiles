print_install() {
    echo "###############################################################################"
    echo "##################  $1"
}
install_alacritty(){
    print_install "Installing alacritty dependencies"
    apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
    print_install "Installing cargo"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source $HOME/.cargo/env
    apt-get install --yes cargo
    print_install "Installing alacritty"
    cargo install alacritty
}

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

install_alacritty
