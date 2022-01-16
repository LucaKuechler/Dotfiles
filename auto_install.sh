#!/bin/bash

###
#       DOTFILES AUTO INSTALLER
#       by luca
###

# TO INSTALL NEW SOFTWARE PLACE A FILE IN THE
# SPECIFIC PATH AND APPEND TO THE LIST
softwares=(
    "fzf"
    "lsd"
    "nvim"
    "ranger"
    "starship"
    "tmux"
    #"testcase"
)

check_installed() {
    for software in "${softwares[@]}"
    do
        if ! type $software &> /dev/null
        then
            echo "$software needs to be installed!"
            bash ./scripts/.config/scripts/setup/ubuntu/install_$software.sh
        fi
    done
}

check_installed
