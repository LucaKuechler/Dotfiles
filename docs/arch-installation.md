
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

* Install nnn
```
git clone https://github.com/jarun/nnn.git ~/Downloads
cd ~/Downloads/nnn/
sudo make O_NERD=1
sudo mv nnn /usr/bin
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

* Install rofi
```
sudo pacman -S rofi
cd ~/Dotfiles && stow rofi
```

* Install colored icons
```
sudo pacman -S noto-fonts-emoji
```

* Copy into `/etc/fonts/local.conf`
```
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
 <alias>
   <family>sans-serif</family>
   <prefer>
     <family>Noto Sans</family>
     <family>Noto Color Emoji</family>
     <family>Noto Emoji</family>
     <family>DejaVu Sans</family>
   </prefer> 
 </alias>

 <alias>
   <family>serif</family>
   <prefer>
     <family>Noto Serif</family>
     <family>Noto Color Emoji</family>
     <family>Noto Emoji</family>
     <family>DejaVu Serif</family>
   </prefer>
 </alias>

 <alias>
  <family>monospace</family>
  <prefer>
    <family>Noto Mono</family>
    <family>Noto Color Emoji</family>
    <family>Noto Emoji</family>
   </prefer>
 </alias>
</fontconfig>
```

* Install blue light filter (5000k)
```
yay redshiftgui
```

* Install fzf
```
yay fzf #choose 2
```

* Screenshot Tool
```
yay flameshot #choose 1
```

* Install pipewire
```
sudo pacman -S manjaro-pipewire gst-plugin-pipewire pulseeffects pipewire-jack pipewire-pulse pipewire-alsa pipewire-audio
```

* Setup brightness
```
yay xbacklight
nvim /etc/X11/xorg.conf

Section "Device"
    Identifier  "Intel Graphics"
    Driver      "intel"
    Option      "Backlight"  "intel_backlight"
EndSection
```

* Battery
```
yay dunst
yay cronie
crontab -e
*/5 * * * * /home/lck/Dotfiles/scripts/.config/scripts/batterynotify.sh
```

* Install xpad
```
yay xpad
```
