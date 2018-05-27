#!/bin/bash
if make -v; then exit 0
fi

if [! apt-get -v]; then
    apt-get install make
else
    brew install make
fi
