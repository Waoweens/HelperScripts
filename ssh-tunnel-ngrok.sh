#!/usr/bin/env bash

# Installer

DIR="$HOME/.local/share/meowcorp/ngrok"
URL="https://cdn.discordapp.com/attachments/x/x/givemessh"

if [ ! -d "$DIR" ]; then
	mkdir -p "$DIR"
fi

if [ -f "$DIR/ngrok" ]; then
	echo "ngrok is already installed."
else
	echo "ngrok is not installed, downloading now."
	# download ngrok
	curl -o "$DIR/ngrok.tgz" https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
	# extract ngrok
	tar -xzf "$DIR/ngrok.tgz" -C "$HOME/.local/share/meowcorp/ngrok"
fi

SCRIPT=$(readlink -f "$0")
if [ ! -f "$HOME/bin/ngrok" ]; then
	ln -s "$SCRIPT" "$HOME/bin/ngrok"
fi

# check if a home bin directory exists in $PATH
# if it doesn't, install in /usr/local/bin
if [[ "$PATH" == *"$HOME/bin"* ]]; then
	if [ ! -d "$HOME/bin" ]; then
		mkdir -p "$HOME/bin"
	fi

	# get the path and file name to this script
	

else
	echo
fi

"$DIR"/ngrok update