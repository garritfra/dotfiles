#!/bin/bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "✨installing .vimrc✨"
cp ./.vimrc $HOME/.vimrc

echo "✨installing .bashrc✨"
cp ./.bashrc $HOME/.bashrc
cp ./.bashrc $HOME/.bash_profile

echo "✨creating dev workspace✨"
[ -d $HOME/dev ] && echo "dev workspace already exists" || mkdir $HOME/dev

echo "✨installing latest node & npm✨"
curl -L https://git.io/n-install | bash
sudo /n/bin/n

echo "🎉installation complete🎉"
echo "❗️reload bash for the changes to take effect❗️"
