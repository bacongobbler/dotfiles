#!/usr/bin/env bash

mkdir -p $HOME/.local
rm -rf $HOME/.local/bin
rm -rf $HOME/.config

ln -sf $PWD/bin $HOME/.local/bin
ln -sf $PWD/bashrc $HOME/.bashrc
ln -sf $PWD/config $HOME/.config
