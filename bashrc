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

export PS1="\[${GREEN}\]\u@\h \[${CYAN}\]\w \[${NORMAL}\]><> "
export EDITOR=nvim
export GOPATH=$HOME/code/go
export GOBIN=$GOPATH/bin
export GPG_TTY=$(tty)
export GTK_THEME=gruvbox-dark-gtk
export DOTNET_ROOT=/usr/local/dotnet
export PATH=$HOME/bin:$HOME/.local/bin:$GOPATH/bin:/usr/local/neovim/bin:$PATH

source $HOME/.cargo/env

# fzf config
source $HOME/.config/bash/fzf/completion.bash
source $HOME/.config/bash/fzf/key-bindings.bash
export FZF_DEFAULT_COMMAND="rg --files --hidden"
