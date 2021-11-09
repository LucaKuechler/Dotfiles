# activate starship shell prompt if it is installed
if ! command -v starship &> /dev/null
then
    eval "$(starship init bash)"
fi
