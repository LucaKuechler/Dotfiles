install_tmux() {
	sudo apt install tmux -y
	
	if [[ -L "$(find ~/ -type l -name .tmux.conf)" ]]
	then
	    echo "file exsists"	
	fi
}

install_tmux
