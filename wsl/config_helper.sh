#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi
for arg in "$@"
do
	if [ "$arg" == "--collect" ] || [ "$arg" == "-c" ]
	then
		echo "Collecting configs..."
		# Copy files one by one
		cp -vR ~/.bashrc .
		cp -vR ~/.bash_aliases .
		cp -vR ~/.bash_profile .
		cp -vR ~/.profile .
		cp -vR ~/.Xdefaults .
		cp -vR ~/.runi3 .
		# Copy folders
		cd ~ && cp -vR --parents \
			.config/i3/* \
			.config/nvim/* \
			./repos/configs/wsl/ && cd - > /dev/null
		echo "done"
	elif [ "$arg" == "--deploy" ] || [ "$arg" == "-d" ]
	then
		echo "Deploy configs..."
		# Copy files one by one
		cp -vR ./.bashrc ~
		cp -vR ./.bash_aliases ~
		cp -vR ./.bash_profile ~
		cp -vR ./.profile ~
		cp -vR ./.Xdefaults ~
		cp -vR ./.runi3 ~
		# Copy folders
		cp -vR --parents .config/* ~/
		echo "done"
	elif [ "$arg" == "--install" ] || [ "$arg" == "-i" ]
    then
        echo "Install utils"
        # apt-get install curl
        # Install vim-plug for vim
        curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	else
		echo "Unknown command"
	fi
done
