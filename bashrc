# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export EDITOR=/usr/bin/vim
export GOPATH=~/go/
export PATH=$HOME/bin:$PATH

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
 
function git_unadded_new {
    if git rev-parse --is-inside-work-tree &> /dev/null
    then
        if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]]
        then
            echo ""
        else
            echo "@ "
        fi
    fi
}
 
function git_needs_commit {
    if [[ "git rev-parse --is-inside-work-tree &> /dev/null)" != 'true' ]] && git rev-parse --quiet --verify HEAD &> /dev/null
    then
        git diff-index --cached --quiet --ignore-submodules HEAD 2> /dev/null
        (( $? && $? != 128 )) && echo "@ "
    fi
}
 
function git_modified_files {
    if [[ "git rev-parse --is-inside-work-tree &> /dev/null)" != 'true' ]] && git rev-parse --quiet --verify HEAD &> /dev/null
    then
        git diff --no-ext-diff --ignore-submodules --quiet --exit-code || echo "@ "
    fi
}
 
function short_pwd {
    echo $PWD | sed "s:${HOME}:~:" | sed "s:/\(.\)[^/]*:/\1:g" | sed "s:/[^/]*$:/$(basename $PWD):"
}
 
if [ `id -u` = 0 ]; then
    COLOUR="04;01;31m"
    PATH_COLOUR="01;31m"
else
    COLOUR="01;32m"
    PATH_COLOUR="01;34m"
fi
 
BOLD_RED="01;31m"
BOLD_GREEN="01;32m"
BOLD_BLUE="01;34m"
 
PS1='${debian_chroot:+($debian_chroot)}\[\033[$COLOUR\]\u@\h\[\033[00m\]:\[\033[01;$PATH_COLOUR\]$(echo $PWD)\[\033[00m\]\[\033[01;35m\]$(parse_git_branch)\[\033[00m\]\[\033[$BOLD_RED\]$(git_unadded_new)\[\033[00m\]\[\033[$BOLD_GREEN\]$(git_needs_commit)\[\033[00m\]\[\033[$BOLD_BLUE\]$(git_modified_files)\[\033[00m\]
$ '
