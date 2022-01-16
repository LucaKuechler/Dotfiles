install_lsd() {
	if ! type snap &> /dev/null
	then
		echo "ERROR: LSD could not be installed because SNAP is not installed." 
		echo "SOLUTION: sudo apt install snapd && sudo snap install lsd -y"
	else
		sudo snap install lsd -y
	fi
}

install_lsd
