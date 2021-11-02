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

# SSH Socket
# Removing Linux SSH socket and replacing it by link to wsl2-ssh-pageant socket
export SSH_AUTH_SOCK=$HOME/.ssh/agent.sock
ss -a | grep -q $SSH_AUTH_SOCK
if [ $? -ne 0 ]; then
	rm -f $SSH_AUTH_SOCK
	setsid nohup socat UNIX-LISTEN:$SSH_AUTH_SOCK,fork EXEC:$HOME/.ssh/wsl2-ssh-pageant.exe &>/dev/null &
fi

# GPG Socket
# Removing Linux GPG Agent socket and replacing it by link to wsl2-ssh-pageant GPG socket
export GPG_AGENT_SOCK=$HOME/.gnupg/S.gpg-agent
ss -a | grep -q $GPG_AGENT_SOCK
if [ $? -ne 0 ]; then
	rm -rf $GPG_AGENT_SOCK
	setsid nohup socat UNIX-LISTEN:$GPG_AGENT_SOCK,fork EXEC:"$HOME/.ssh/wsl2-ssh-pageant.exe --gpg S.gpg-agent" &>/dev/null &
fi
