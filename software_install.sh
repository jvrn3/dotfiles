#!/bin/bash

green=$(tput setaf 2)
reset=$(tput sgr0)

func_install() {
	echo "${green}Installing $1${reset}"
	apt-get install -y $1
}

printGreen() {
	echo "${green}$1${reset}"
}

non_apt=(
	mdcat
	neovim
	jetbrains_font
	alacritty
	intellij
)

software_list=(
	curl
	unzip
	exa
	fzf
	git
	fd
	ripgrep
	lazygit
	tmux
	fish
	peek
	docker
)

misc=(
	reaper
	tonelib-zoom
	vscode
	spotify
)

function install_rust() {
	printGreen "Installing rust/cargo"
	curl https://sh.rustup.rs -sSf | sh
}

function alacritty() {
	printGreen "Installing alacritty"
	sudo apt install -y cmake pkg-config libfreetype3-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
	git clone https://github.com/jwilm/alacritty.git
	cd alacritty
	cargo build --release
}

function sdkMan() {
	printGreen "Installing sdkman"
	curl -s "https://get.sdkman.io" | bash
	sdk install java 11.0.18-amazn
	sdk install java 21.0.1-amazn
	sdk use java 11.0.18-amz
}

function setupFish() {
	printGreen "Installing omf"
	curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

	fisher install PatrickF1/fzf.fish
	fisher install reitzig/sdkman-for-fish

	printGreen "Installing fisher"
	curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
	printGreen "Setting fish as the default shell"
	chsh -s $(which fish)
}

basicPackages() {
	for package in "${software_list[@]}"; do
		func_install $package
	done
}

function install_docker() {
	sudo apt-get install ca-certificates curl
	sudo install -m 0755 -d /etc/apt/keyrings
	sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
	sudo chmod a+r /etc/apt/keyrings/docker.asc
	sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
	echo \
		"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |
		sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
	sudo apt-get update
	sudo groupadd docker
	sudo usermod -aG docker $USER
	# maybe should enalbe docker systemd daemon
}

function install_dbeaver() {
	mkdir ~/tmp
	wget -c http://dbeaver.io/files/dbeaver-ce_latest_amd64.deb -O ~/tmp/dbeaver.deb
	sudo dpkg -i ~/tmp/dbeaver.deb
	rm ~/tmp
}

function install_jetbrains_toolbox() {
	mkdir /tmp/toolbox
	tar -zxvf /tmp/toolbox.tar.gz -C /tmp/toolbox
	DIR=$(find /tmp/toolbox -maxdepth 1 -type d -name jetbrains-toolbox-\* -print | head -n1)
	${DIR}/jetbrains-toolbox
	rm /tmp/toolbox

}
