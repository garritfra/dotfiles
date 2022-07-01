# Brew
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"

export ZSH="$HOME/.oh-my-zsh"
export EDITOR="/opt/homebrew/bin/nvim"

# Flutter
export PATH=$PATH:~/sources/flutter/bin

# Add scripts directory
export PATH=$PATH:~/sources/scripts/

# Add cargo
export PATH=$PATH:~/.cargo/bin

# Set GOPATH
export GOPATH=~/sources/go

# Rust
source "$HOME/.cargo/env"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

