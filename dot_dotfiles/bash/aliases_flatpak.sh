function alias_if_installed() {
	if [[ ! "$#" -eq "2" ]]
	then
		echo "Expected exactly two arguments!";
		exit -1;
	fi
	
	# e.g. com.visualstudio.code
	APP="$1"
	ALIAS="$2"
	
	flatpak info "$APP" >/dev/null 2>&1
	if [[ "$?" -eq "0" ]]
	then
		alias $ALIAS="flatpak run $APP"
	fi
}

alias_if_installed com.visualstudio.code code
