# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PS1="><> "

export EDITOR=vim
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$HOME/bin:/usr/local/go/bin:$PATH

# dark colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# typical docker-machine settings
export DOCKER_IP=192.168.99.100
export HOST_IPADDR=$DOCKER_IP
export DOCKER_HOST=tcp://$DOCKER_IP:2376
export DOCKER_CERT_PATH=$HOME/.docker/machine/machines/deis
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME="deis"

export KUBERNETES_PROVIDER=vagrant
export VAGRANT_DEFAULT_PROVIDER=virtualbox

# deis/rigger
export DEIS_ROOT=$GOPATH/src/github.com/deis/deis
