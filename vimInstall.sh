# Installs custom Vundle setup
# @author Andrew Shoemaker

# Copy .vimrc to user's  home directory
cp ~/ceg-2410/dotfiles/vim-config/.vimrc ~/.vimrc

# Install Vundle if ~/.vim/bundle/Vundle.vim does not exist
if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then 
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Runs vim Plugin Installer
vim +PluginInstall +qall
