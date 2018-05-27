#!/bin/bash
clear
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "installing .vimrc"
cp ./.vimrc $HOME/.vimrc

echo "installing .bashrc"
cp ./.bashrc $HOME/.bashrc
cp ./.bashrc $HOME/.bash_profile

echo "creating dev workspace"
[ -d $HOME/Documents/dev ] && echo "dev workspace already exists" || mkdir $HOME/Documents/dev echo

echo "installation complete"
