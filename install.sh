#!/usr/bin/env bash

rm -rf $HOME/.config
for i in $(ls --color=no); do ln -sf $PWD/$i ~/.$i; done
