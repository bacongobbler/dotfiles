#!/usr/bin/env bash

rm -rf $HOME/bin
rm -rf $HOME/.config

ln -sf $PWD/bin $HOME/bin
ln -sf $PWD/dotfiles/bashrc $HOME/.bashrc
ln -sf $PWD/dotfiles/config $HOME/.config
