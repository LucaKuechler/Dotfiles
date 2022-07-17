
* Update everything.
```
sudo pacman -Syu
```

* Install Starship
```
sudo pacman -S starship
```

* Install zoxide
```
sudo pacman -S zoxide
```

* Install nodejs and npm
```
sudo pacman -S nodejs npm
```

* Install tldr
```
sudo pacman -S tldr
```

* Install golang
```
#Download https://go.dev/dl/
sudo tar -C /usr/local -xzf <file>
export PATH=$PATH:/usr/local/go/bin
```

* Github ssh
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
mkdir ~/.ssh
touch ~/.ssh/config

Host github.com
        User git
        Hostname github.com
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/github
```

* Install Zip
```
sudo pacman -S zip
```

* Install ripgrep
```
sudo pacman -S ripgrep
```

* Install Browser
```
sudo pacman -S firefox
```

* Install Stow 
```
sudo pacman -S stow
```

* Install Neovim
```
sudo pacman -S neovim
cd ~/Dotfiles
stow nvim
:PackerInstall
```

* Install tmux
```
sudo pacman -S tmux
cd ~/Dotfiles
stow tmux
```

* Install alacritty
```
sudo pacman -S alacritty
https://github.com/pyrho/hack-font-ligature-nerd-font/blob/master/font/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf
# move via file exporer ~/.local/share/fonts
```

* Install qtile
```
sudo pacman -S qtile
```

* Install wallpaper engine
```
sudo pacman -S nitrogen
nitrogen --save ~/Dotfiles/wallpaper/
# select zoomed fill option and wallpaper apply
```

* Install picom  for shadows
```
sudo pacman -S picom
```

* Install icon theme for rofi 
```
sudo pacman -S papirus-icon-theme
```

* Install xclip
```
sudo pacman -S xclip
```

* Install aur
```
sudo pacman -S base-devel yay 
```

* Install betterlockscreen
```
sudo yay -S betterlockscreen
```

* Install pip
```
sudo pacman -S python-pip
```
