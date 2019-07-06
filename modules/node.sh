#!/bin/bash

node -v
npm -v

if [ $? -eq 0 ]; then  
    echo "node & npm already installed"
else 
    curl -L https://git.io/n-install | bash
    sudo $HOME/n/bin/n stable
    sudo rm -rf $HOME/n
fi


# install and update packages
npm i -g npm
npm i -g prettier
