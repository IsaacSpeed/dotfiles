#!/usr/bin/env bash

function has_command() {
  command -v "$1" 1>/dev/null 2>&1
}

function prepend_path() {
  if [ -d "$1" ]; then
    export PATH="$1:$PATH"
  fi
}

function source_if_exists() {
	if [[ ! "$#" -eq "1" ]]
	then
		echo "Expected exactly one argument!";
		exit -1;
	fi
	
	file="$1"
	
	if [[ -f "$file" ]]
	then
		  source "$file"
	fi
}
