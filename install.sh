#!/bin/bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "✨installing .vimrc✨"
cp ./rcs/.vimrc $HOME/.vimrc

echo "✨installing .bashrc✨"
cp ./rcs/.bashrc $HOME/.bashrc
cp ./rcs/.bashrc $HOME/.bash_profile

echo "✨creating dev workspace✨"
[ -d $HOME/dev ] && echo "dev workspace already exists" || mkdir $HOME/dev

echo "✨installing latest node & npm✨"
source node.sh

if [ $? -eq 0 ]
then
    echo "🎉installation complete🎉"
    echo "❗️reload shell for the changes to take effect❗️"
else
    echo "Program exited with" $?
fi
