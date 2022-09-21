#!/bin/bash
function install_package() {
	if [[ ! "$#" -eq "1" ]]
	then
		echo "Expected exactly one argument!";
	fi
	
	PACKAGE="$1"
	
	echo "Installing $PACKAGE!"
	
	sudo apt install "$PACKAGE"
}
install_package ripgrep
install_package fd-find
