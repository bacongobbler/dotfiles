[[ ${TERM,,} == *xterm* ]] && shopt -s checkwinsize

# global
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

export PS1="\[${GREEN}\]\u@\h \[${CYAN}\]\w \[${NORMAL}\]><> "
export GPG_TTY=$(tty)
export PATH=$HOME/bin:$HOME/.local/bin:$PATH

# bash
source $HOME/.bash_aliases

# binaryen
export PATH=/usr/local/binaryen/bin:$PATH

# Feishin
export PATH=/usr/local/feishin:$PATH

# Fermyon Cloud
export PATH=/usr/local/cloud:$PATH

# Lua LSP
export PATH=/usr/local/lua-language-server/bin:$PATH

# neovim
export PATH=/usr/local/neovim/bin:$PATH

# .NET
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$DOTNET_ROOT:$HOME/.dotnet/tools:$PATH

# NodeJS
export PATH=/usr/local/node/bin:$PATH

# Neovim
export EDITOR=nvim
export PATH=/usr/local/neovim/bin:$PATH

# Rust
source $HOME/.cargo/env

# Go
export GOPATH=$HOME/code/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# fzf
source $HOME/.config/bash/fzf/completion.bash
source $HOME/.config/bash/fzf/key-bindings.bash
export FZF_DEFAULT_COMMAND="rg --files --hidden"

# alacritty
source $HOME/.config/bash/alacritty.bash

# protoc
export PATH=/usr/local/protoc/bin:$PATH

# Load Angular CLI autocompletion.
source <(ng completion script)
