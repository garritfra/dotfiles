#!/bin/bash

apt-get -v
if [ $? -eq 0 ]; then
    apt-get install make
fi
