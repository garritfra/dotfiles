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


npm i -g prettier
