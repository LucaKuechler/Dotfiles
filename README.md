# Dotfiles

## Contents
1. PRE INSTALLATION 
2. TMUX
3. NVIM 
4. CHEATSHEET
5. BASH


## 1. PRE INSTALLATION

### 1.1 Clone the repository
```
    git clone https://github.com/LucaKuechler/Dotfiles ~/.
```

### 1.2 INSTALL A NERD FONT
* Install a awesome terminal font.
* Change the font inside your terminal to 'Hack Nerd Font Mono'.
```
wget https://github.com/pyrho/hack-font-ligature-nerd-font/blob/master/font/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf
```


### 1.3 INSTALL UNZIP
* Some scripts require 'unzip' to work.

#### Ubuntu: 
```
sudo apt install unzip -y
```

#### Arch:
```
sudo pacman -S zip
```


### 1.4 INSTALL GNU STOW
* All dotfiles are managed with gnu stow.

#### Ubuntu: 
```
    sudo apt install stow -y
```

#### Arch:
```
    sudo pacman -S stow
```


## 2. TMUX
* If you don't have a tmux configuration file.
```
    cd ~/Dotfiles/ && stow tmux
```

* If you already have a tmux configuration file.
```
    mv ~/.tmux.conf ~/.tmux.conf.backup
    cd ~/Dotfiles/ && stow tmux
```


## 3. NVIM

### 3.1 UPDATE CONFIG
* If you don't have a nvim configuration.
```
    cd ~/Dotfiles/ && stow nvim
```

* If you already have a nvim configuration.
```
    mv ~/.config/nvim/ ~/.config/nvim-backup
    cd ~/Dotfiles/ && stow nvim
```

### 3.2 INSTALL PLUGGINS
* Install all neovim plugins using packer.

* Open NVIM.
```
nvim
```

* Install the pluggins.
```
    :PackerInstall
    :PackerUpdate
```
* After reopening nvim the configuration should be loaded.


### 3.3 INSTALL EFM LANGUAGE SERVER
* Efm is needed to use external formaters and linters like black or prettier.

* Install go.
```
    curl -OL https://golang.org/dl/go1.16.7.linux-amd64.tar.gz ~/Downloads
```

* Unpack the installed file.
```
    sudo tar -C /usr/local -xvf ~/Downloads/go1.16.7.linux-amd64.tar.gz
```

* Add go to your ~/.profile file.
```
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile && source ~/.profile
```

* Install langserver via NVIM.
```
    :LspInstall efm
```

* Add EFM to your path.
```
    echo 'export PATH=$PATH:~/.local/share/nvim/lsp_servers/efm/' >> ~/.profile && source ~/.profile
```


### 3.4 INSTALL EFM LANGUAGE SERVER COMPONENTS

#### Install components for Ubuntu

##### 1. Python
```
   sudo apt install black, pylint -y 
```

##### 2. Lua 

* Install required building tools for lua-formatter.
```
    sudo apt install cmake -y 
```

* Build lua formatter from source.
```
    git clone --recurse-submodules https://github.com/Koihik/LuaFormatter.git
    cd LuaFormatter
    cmake .
    make
    make install
```

#### Arch


### 3.5 INSTALL PYRIGHT
* Install Nodejs 12.x
```
    sudo apt update
    sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt -y install nodejs
```

* Install pyright with lsp install.
```
    npm i -g pyright    
```

