print_install() {
    	echo "###############################################################################"
    	echo "##################  $1"
}

install_spotify()  {

print_install "Adding Spotify"

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

}
install_spotify

apt-get update
apt-get install spotify-client --yes
