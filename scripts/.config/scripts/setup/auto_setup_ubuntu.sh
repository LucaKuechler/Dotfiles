# install unzip
if ! command -v unzip &> /dev/null
then
    echo "Unzip is not installed so it will be automatically installed." 
    sudo apt install unzip -y
fi

# install lsd
if ! command -v lsd &> /dev/null
then
    echo "LSD is not installed so it will be automatically installed." 
    sudo snap install lsd -y
fi

# install starship
if ! command -v starship &> /dev/null
then
    echo "Starship is not installed so it will be automatically installed." 
    sh -c "$(curl -fsSL https://starship.rs/install.sh)"
fi

# install ranger 
if ! command -v ranger &> /dev/null
then
    echo "Ranger is not installed so it will be automatically installed." 
    sudo apt install ranger -y
fi

# install fzf
if ! command -v fzf &> /dev/null
then
    echo "FZF is not installed so it will be automatically installed." 
    sudo apt install fzf -y
fi

# install tmux 
if ! command -v tmux &> /dev/null
then
    echo "TMUX is not installed so it will be automatically installed." 
    sudo apt install tmux -y
fi

# install neovim
if ! command -v nvim &> /dev/null
then
    echo "Neovim is not installed so it will be automatically installed." 
    sudo apt install software-properties-common dirmngr apt-transport-https lsb-release ca-certificates -y
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update -y
    sudo apt-get install neovim -y
fi
