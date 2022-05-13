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
$ git clone https://github.com/LucaKuechler/Dotfiles ~/.
```

### 1.2 INSTALL A NERD FONT
* Install a awesome terminal font.
* Change the font inside your terminal to 'Hack Nerd Font Mono'.
```
$ wget https://github.com/pyrho/hack-font-ligature-nerd-font/blob/master/font/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf
```

### 1.3 INSTALL UNZIP
* Some scripts require 'unzip' to work.

#### Ubuntu: 
```
$ sudo apt install unzip -y
```

#### Arch:
```
$ sudo pacman -S zip
```

### 1.4 INSTALL GNU STOW
* All dotfiles are managed with gnu stow.

#### Ubuntu: 
```
$ sudo apt install stow -y
```

#### Arch:
```
$ sudo pacman -S stow
```


## 2. TMUX
* If you don't have a tmux configuration file.
```
$ cd ~/Dotfiles/ && stow tmux
```

* If you already have a tmux configuration file.
```
$ mv ~/.tmux.conf ~/.tmux.conf.backup
$ cd ~/Dotfiles/ && stow tmux
```


## 3. NVIM
* If you don't have a nvim configuration.
```
$ cd ~/Dotfiles/ && stow nvim
```

* If you already have a nvim configuration.
```
$ mv ~/.config/nvim/ ~/.config/nvim-backup
$ cd ~/Dotfiles/ && stow nvim
```

### 3.1 INSTALL PLUGINS
* Install all neovim plugins using packer.

* Open NVIM.
```
$ nvim
```

* Install the plugins.
```
    :PackerInstall
```
* After reopening nvim the configuration should be loaded.

### 3.2 INSTALL LANGUAGE SERVERS

#### 3.2.1 pyright
* Install Nodejs (12.x).
```
$ sudo apt update
$ sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
$ curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
$ sudo apt -y install nodejs
```

* Install pyright.
```
$ npm i -g pyright    
```

### 3.3 INSTALL LINTER AND FORMATTER
#### 3.3.1 Python
* Installation on OS Level.
```
$ sudo apt install black, pylint, mypy -y 
```

* Installation trought pip.
```
$ pip install black, pylint, mypy
```

#### 3.3.2 Lua 
* Install cargo to install rust programs.
```
$ sudo apt install cargo
```

* Install the stylua formatter.
```
$ cargo install stylua
```

* Add the executable file to your path.
```
$ echo 'export PATH=$PATH:~/.cargo/bin' >> ~/.profile && source ~/.profile
```

### 3.4 INSTALL DEBUGGER
#### 3.4.1 Go
* Install go debugger.
```
$ git clone https://github.com/go-delve/delve
$ cd delve
$ go install github.com/go-delve/delve/cmd/dlv
$ make build
$ chmod +x dlv
$ mv dlv ~/.local/share/nvim/debugger/go/delve
```

* Install debugger adapter.
```
$ cd ~/.local/share/nvim/debugger/go/
$ git clone https://github.com/golang/vscode-go
$ cd vscode-go
$ npm install
$ npm run compile
```
