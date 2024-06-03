# Add homebrew (multiple platforms)
CPU=$(uname -p)
if [[ "$CPU" == "arm" ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
  alias oldbrew=/usr/local/bin/brew
else
  export PATH="/usr/local/bin:$PATH"
fi

if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

# Brew
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi
export HOMEBREW_PREFIX=$(brew --prefix)

export LIBRARY_PATH="$LIBRARY_PATH:$HOMEBREW_PREFIX/lib"

# Node
export NVM_DIR="~/.nvm"
source ~/.nvm/nvm.sh

export ZSH="$HOME/.oh-my-zsh"
export EDITOR="/opt/homebrew/bin/nvim"

# Flutter
export PATH=$PATH:~/sources/flutter/bin

# Python
export PATH=$(pyenv root)/shims:$PATH

# Add scripts directory
export PATH=$PATH:~/sources/scripts/

# Set GOPATH
export GOPATH=~/sources/go

# Rust
source ~/.cargo/env
export PATH=~/.cargo/bin:$PATH

# Kubernetes
KUBE_CONFIG_DIR=~/.kube/configs
export KUBECONFIG=$(find $KUBE_CONFIG_DIR -type f | tr '\n' ':' | sed 's/:$//')

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
