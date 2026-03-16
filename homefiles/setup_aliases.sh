#!/bin/bash

# Check if a file or link already exists in user's home directory
if [ -e "$HOME/.bash_aliases" ] || [ -L "$HOME/.bash_aliases" ]; then
	
	#Makes backup of original .bash_aliases in user's home directory
	mv "$HOME/.bash_aliases" "$HOME/.bash_aliases.bak"
fi

#Symbolically links the .bash_aliases file in your dotfiles repository to your user's home directory
ln -s "$HOME/ceg-2410/dotfiles/homefiles/.bash_aliases" "$HOME/.bash_aliases"

echo "Bash aliases configured"
echo "Run: source ~/.bashrc"
