export PS1="><> "

export EDITOR=vim
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$HOME/bin:$GOPATH/bin:/usr/local/go/bin:$PATH

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
