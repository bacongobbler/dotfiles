# Stackato client aliases
alias st="stackato"

# vagrant aliases
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vd="vagrant destroy"

# enable color support of ls et al
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ls aliases
alias l='ls'
alias ll='ls -al'
alias la='ls -A'
