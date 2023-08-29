#!/usr/bin/env bash
# Dont link DS_Store files
# find . -name ".DS_Store" -exec rm {}\;

OLD_DOTFILES="dotfile_bk_$(date -u +"%Y%m%d")"
mkdir $OLD_DOTFILES

function backup_if_exists() {
    if [ -f $1 ];
    then 
        mv $1 $OLD_DOTFILES
    fi 
    if [ -d $1 ]; 
    then 
        mv $1 $OLD_DOTFILES
    fi
}

# Clean common conflicts
backup_if_exists ~/.bash_profile
backup_if_exists ~/.bashrc
backup_if_exists ~/.vimrc
backup_if_exists ~/.config/nvim/init.vim
backup_if_exists ~/.config/nvim/init.lua

# Create symlinks
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.aliases ~/.aliases
ln -s ~/dotfiles/init.lua ~/.config/nvim/init.lua
