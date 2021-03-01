source $HOME/.bash_aliases
export PS1="><> "

export EDITOR=vim
export GOPATH=$HOME/code/go
export GOBIN=$GOPATH/bin
export PATH=$HOME/bin:$HOME/.local/bin:$GOPATH/bin:$PATH

export GPG_TTY=$(tty)
source $HOME/.cargo/env
