[[ ${TERM,,} == *xterm* ]] && shopt -s checkwinsize

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

source $HOME/.bash_aliases
export PS1="\[${GREEN}\]\u@\h \[${BLUE}\]\w \[${NORMAL}\]><> "

export EDITOR=vim
export GOPATH=$HOME/code/go
export GOBIN=$GOPATH/bin
export PATH=$HOME/bin:$HOME/.local/bin:$GOPATH/bin:$HOME/.dotnet:$HOME/.dotnet/tools:/usr/local/omnisharp/bin:/usr/local/node/bin:$PATH

export GPG_TTY=$(tty)
source $HOME/.cargo/env

export GTK_THEME=gruvbox-dark-gtk

export DOTNET_ROOT=$HOME/.dotnet
