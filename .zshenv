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

export HOMEBREW_PREFIX=$(brew --prefix)

export HOMEBREW_NO_INSTALL_CLEANUP=1

# Brew
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

export LIBRARY_PATH="$LIBRARY_PATH:$HOMEBREW_PREFIX/lib"

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

# Your additional kubeconfig files should be inside ~/.kube/config-files
ADD_KUBECONFIG_FILES="$HOME/.kube/configs"
mkdir -p "${ADD_KUBECONFIG_FILES}"OIFS="$IFS"
IFS=$'\n'
for kubeconfigFile in `find "${ADD_KUBECONFIG_FILES}" -type f -name "*.yml" -o -name "*.yaml"`
do
    export KUBECONFIG="$kubeconfigFile:$KUBECONFIG"
done
IFS="$OIFS"

[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

. "$HOME/.cargo/env"
