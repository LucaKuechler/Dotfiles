install_nvim() {
    sudo apt install software-properties-common dirmngr apt-transport-https lsb-release ca-certificates -y
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update -y
    sudo apt-get install neovim -y
}

install_nvim
