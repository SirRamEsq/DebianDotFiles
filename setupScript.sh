#!/bin/bash

### 
### For Debian systems
###
### To be run from user home directory ~
### sudo must be installed

# Install programs and setup
sudo apt-get install git neovim ranger fortune cowsay python3 python3-pip zsh curl wget dunst i3blocks ncmpcpp compton sakura dmenu feh gsimplecal unclutter

sudo pip3 install neovim
sudo pip3 install pywal

# OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir ~/.config/nvim

alias vim='nvim'

# git setup configurations
# Dot files
git init
git remote add origin https://github.com/SirRamEsq/DebianDotFiles
git fetch
git reset origin/master
git checkout -t origin/master

# Neovim
git clone https://github.com/SirRamEsq/NeoVimConfig ~/.config/nvim
cp ~/.config/nvim/LINUXinit.vim ~/.config/nvim/init.vim

