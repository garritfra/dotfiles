#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "installing .vimrc"
cp ./.vimrc $HOME/.vimrc

echo "installing .bashrc"
cp ./.bashrc $HOME/.bashrc
cp ./.bashrc $HOME/.bash_profile

echo "installation complete"
