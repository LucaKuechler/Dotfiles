# --------------------------------------------------------------------
# GENERAL
# --------------------------------------------------------------------
alias c='clear'
alias cls='clear'


# --------------------------------------------------------------------
# LSD
# --------------------------------------------------------------------
if command -v lsd &> /dev/null
then
	alias l='lsd -al'
	alias ls='lsd'
	alias la='lsd -A'
	alias ll='lsd -AlF'
else
    alias l='ls -al'
    alias la='ls -A'
    alias ll='ls -AlF'
fi


# --------------------------------------------------------------------
# TMUX
# --------------------------------------------------------------------
if command -v nvim &> /dev/null && command -v fzf &> /dev/null
then
    alias t='tmux attach || tmux new-session'
    alias ta='tmux attach -t'
    alias tl='tmux list-sessions'
else
    alias t='echo "ALIAS ERROR: Please install TMUX first!"'
    alias ta='echo "ALIAS ERROR: Please install TMUX first!"'
    alias tl='echo "ALIAS ERROR: Please install TMUX first!"'
fi


# --------------------------------------------------------------------
# NVIM
# --------------------------------------------------------------------
if command -v nvim &> /dev/null
then
    alias v='nvim'
    alias nivm='nvim'

    if command -v fzf &> /dev/null
    then
        alias vf='nvim $(find * -type f | fzf)'
    else
        alias vf='echo "ALIAS ERROR: Please install FZF and NVIM first!"'
    fi
else
    alias v='vi'
    alias nivm='echo "ALIAS ERROR: Please install NVIM first!"'
fi


# --------------------------------------------------------------------
# CHANGE DIRECTORY
# --------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../../'
alias ccd='cd $(find * -type d | fzf)'


# --------------------------------------------------------------------
# HISTORY
# --------------------------------------------------------------------
alias h='history'
alias hg='history | grep'

if command -v fzf &> /dev/null
then
    if [[ -n "$IS_WSL" || -n "$WSL_DISTRO_NAME" ]];
    then
       alias hs='cat ~/.bash_history | fzf | clip.exe'
    elif command -v xclip &> /dev/null
    then
        alias hs='cat ~/.bash_history | fzf | xclip'
    fi
else
    alias hs='echo "ALIAS ERROR: Please install FZF first or append your clipboard!"'
fi


# --------------------------------------------------------------------
# GIT
# --------------------------------------------------------------------
alias g='git'
alias gi='git init'
alias gc='git clone'

alias gs='git status'
alias ga='git add'
alias gaa='git add *'
alias gcm='git commit -m'
alias gps='git push'
alias gpl='git pull'

alias grm='git rm'
alias grs='git restore'
alias gf='git fetch'

alias gco='git checkout'
alias gcom='git checkout master'
alias gccb='git checkout -b'


# --------------------------------------------------------------------
# APT 
# --------------------------------------------------------------------
if command -v apt &> /dev/null
then
    alias ai='sudo apt install'
    alias aiy='sudo apt install -y'
    alias aud='sudo apt update'
    alias aug='sudo apt upgrade'
    alias ar='sudo apt remove'
    alias auu='sudo apt update && sudo apt upgrade'
fi


# --------------------------------------------------------------------
# DOCKER
# --------------------------------------------------------------------
if command -v docker &> /dev/null
then
    alias dt='docker start'
    alias dp='docker stop' 
    alias dr='docker restart'
    alias dl='docker logs'
    alias dlf='docker logs --follow'
    alias di='docker inspect'
    alias de='docker exec -it'
    alias dps='docker ps'

    alias dpl='docker pull'
    alias dpu='docker push'
    alias db='docker build'

else
    alias dt='echo "ALIAS ERROR: Please install DOCKER first!"'
    alias dp='echo "ALIAS ERROR: Please install DOCKER first!"' 
    alias dr='echo "ALIAS ERROR: Please install DOCKER first!"'
    alias dl='echo "ALIAS ERROR: Please install DOCKER first!"'
    alias dlf='echo "ALIAS ERROR: Please install DOCKER first!"'
    alias di='echo "ALIAS ERROR: Please install DOCKER first!"'
    alias de='echo "ALIAS ERROR: Please install DOCKER first!"'
    alias dps='echo "ALIAS ERROR: Please install DOCKER first!"'

    alias dpl='echo "ALIAS ERROR: Please install DOCKER first!"'
    alias dpu='echo "ALIAS ERROR: Please install DOCKER first!"'
    alias db='echo "ALIAS ERROR: Please install DOCKER first!"'
fi

if command -v docker &> /dev/null && command -v fzf &> /dev/null
then
    alias dts='docker start $(docker ps -a --format "'{{.Names}}'" | fzf)'
    alias dps='docker stop $(docker ps -a --format "'{{.Names}}'" | fzf)'
    alias drs='docker restart $(docker ps -a --format "'{{.Names}}'" | fzf)'
    alias dls='docker logs $(docker ps -a --format "'{{.Names}}'" | fzf)'
    alias dlfs='docker logs $(docker ps -a --format "'{{.Names}}'" | fzf) --follow'
    alias dis='docker inspect $(docker ps -a --format "'{{.Names}}'" | fzf)'
    alias debs='docker exec -it $(docker ps -a --format "'{{.Names}}'" | fzf) /bin/bash'
    alias dess='docker exec -it $(docker ps -a --format "'{{.Names}}'" | fzf) /bin/sh'
else
    alias dts='echo "ALIAS ERROR: Please install DOCKER and FZF first!"'
    alias dps='echo "ALIAS ERROR: Please install DOCKER and FZF first!"'
    alias drs='echo "ALIAS ERROR: Please install DOCKER and FZF first!"'
    alias dls='echo "ALIAS ERROR: Please install DOCKER and FZF first!"'
    alias dlfs='echo "ALIAS ERROR: Please install DOCKER and FZF first!"'
    alias dis='echo "ALIAS ERROR: Please install DOCKER and FZF first!"'
    alias debs='echo "ALIAS ERROR: Please install DOCKER and FZF first!"'
    alias dess='echo "ALIAS ERROR: Please install DOCKER and FZF first!"'
fi


# --------------------------------------------------------------------
# DOCKER-COMPOSE
# --------------------------------------------------------------------
if command -v docker-compose &> /dev/null || command -v "docker compose" &> /dev/null
then
    alias dcud='docker-compose up -d'
    alias dcudb='docker-compose up -d --build'
    alias dcd='docker-compose down'
else
    alias dcud='echo "ALIAS ERROR: Please install DOCKER-COMPOSE first!"'
    alias dcudb='echo "ALIAS ERROR: Please install DOCKER-COMPOSE first!"'
    alias dcd='echo "ALIAS ERROR: Please install DOCKER-COMPOSE first!"'
fi


# --------------------------------------------------------------------
# CUSTOM
# --------------------------------------------------------------------
alias fif='grep -rn . -e'

if command -v fzf &> /dev/null
then
    alias cs='less -c $(find ~/.config/cheat/**/* -type f | fzf)'
else
    alias cs='echo "ALIAS ERROR: Please install FZF first!"'
fi

if command -v nvim &> /dev/null
then
    alias nvconf="~/Dotfiles/scripts/.config/scripts/nvconf.sh"
fi

