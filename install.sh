#!/bin/bash



echo "✨installing .vimrc✨"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./rcs/.vimrc $HOME/.vimrc

echo "✨installing .bashrc✨"
cp ./rcs/.bashrc $HOME/.bashrc
cp ./rcs/.bashrc $HOME/.bash_profile

echo "✨creating dev workspace✨"
[ -d $HOME/dev ] && echo "dev workspace already exists" || mkdir $HOME/dev

echo "✨installing GNU make"✨""
sh ./modules/make.sh

echo "✨installing latest node & npm✨"
sh ./modules/node.sh

if [ $? -eq 0 ]
then
    echo "🎉installation complete🎉"
    echo "❗️reload shell for the changes to take effect❗️"
else
    echo "Program exited with" $?
fi
