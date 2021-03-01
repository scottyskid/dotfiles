#!/bin/bash

# git
sudo apt -y install git

# curl
sudo apt -y install curl

# nvim
echo "==================================="
echo "neovim instalation"
sudo apt -y install neovim
#sudo apt install python3-neovim
# plug - package manager
#sh -c 'curl -fLo ~/.config/nvim/plugged/plug.vim --create-dirs \
	    #   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# tmux
echo "==================================="
echo "tmux instalation"
sudo apt -y install tmux
#install plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# zsh
echo "==================================="
echo "zsh instalation"
sudo apt -y install zsh
#chsh -s /usr/bin/zsh root
# Install oh-my-zsh to $HOME directory
#sh -c "$(cd && curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh) -s --batch"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# Install Powerlevel10K theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Zsh package manager
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
mkdir ~/.zinit
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin

# python3
#sudo apt -y install python3-pip


# install nodejs
#curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -
#sudo apt install -y nodejs
#sudo apt -y install npm
#npm install -g typescript
#npm install -g ts-node

# make projects directory
mkdir $HOME/_projects

# set zsh as default
chsh -s $(which zsh)
