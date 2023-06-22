# --------------------------------------------------------------------
# GENERAL SETTINGS
# --------------------------------------------------------------------
shopt -s checkwinsize   # RESIZING FIXES.
HISTCONTROL=ignoreboth  # dont put duplicates into history or commands with leading space
HISTSIZE=1000           # max commands in history
HISTFILESIZE=2000       # max file size
shopt -s histappend     # append to history not overwrite it

# COLORED FILES AND DIRECTORIES
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# MORE FRIENDLY PIPE
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# --------------------------------------------------------------------
# CUSTOM
# --------------------------------------------------------------------
# PROMPT
if command -v starship &> /dev/null
then
    eval "$(starship init bash)"
fi

# FZF SETTING
if command -v fzf &> /dev/null && type rg &> /dev/null
then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi


# BETTER CD
eval "$(zoxide init bash)"

# ALIASES
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# --------------------------------------------------------------------
# VI MODE
# --------------------------------------------------------------------
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'


# --------------------------------------------------------------------
# AUTOCOMPLETION
# --------------------------------------------------------------------
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# --------------------------------------------------------------------
# IDK 
# --------------------------------------------------------------------
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH="$PATH:$(go env GOPATH)/bin"
