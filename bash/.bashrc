# ---------------- SECTION - ALIAS --------------------

# PIPENV
alias pips='pipenv shell'
alias pipi='pipenv install'
alias pipid='pipenv install --dev'
alias pipg='pipenv graph'
alias pipf='nvim Pipfile'

#PIP
alias pi='pip install'
alias pu='pip uninstall'
alias pl='pip list'
alias pf='pip freeze'
alias pfr='pip freeze > requirements.txt'


# LSD
if command -v lsd &> /dev/null
then
	alias ll='lsd -alF'
	alias la='lsd -A'
	alias l='lsd -al'
	alias ls='lsd'
fi



# DOCKER
alias dst='docker start'
alias dsts='docker start $(docker ps -a --format "'{{.Names}}'" | fzf)'

alias dsp='docker stop' 
alias dsps='docker stop $(docker ps -a --format "'{{.Names}}'" | fzf)' 

alias dr='docker restart'
alias drs='docker restart $(docker ps -a --format "'{{.Names}}'" | fzf)'

alias dl='docker logs --follow'
alias dls='docker logs $(docker ps -a --format "'{{.Names}}'" | fzf) --follow'

alias di='docker inspect'
alias dis='docker inspect $(docker ps -a --format "'{{.Names}}'" | fzf)'

alias deb='docker exec -it $(docker ps -a --format "'{{.Names}}'" | fzf) /bin/bash'
alias des='docker exec -it $(docker ps -a --format "'{{.Names}}'" | fzf) /bin/sh'


# DOCKER-COMPOSE
alias dcud='docker-compose up -d'
alias dcudb='docker-compose up -d --build'
alias dcd='docker-compose down'


# KUBERNETES 


# GIT
alias g='git'
alias gs='git status'
alias ga='git add'
alias gaa='git add *'
alias gc='git commit -m'
alias gps='git push'
alias gpl='git pull'


# HISTORY
alias h='history'
alias hs='history | grep'
alias hg='history | grep'


# GENERAL
alias c='clear'
alias cls='clear'
alias v='nvim'
alias nivm='nvim'


# CUSTOM ALIASES 
alias ccd='cd $(find * -type d | fzf)'
alias vf='nvim $(find * -type f | fzf)'
alias cs='less -c $(find ~/.config/cheat/**/* -type f | fzf)'
