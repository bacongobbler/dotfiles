#!/usr/bin/env bash

rm -rf $HOME/bin
rm -rf $HOME/.config

ln -sf $PWD/bin $HOME/bin
ln -sf $PWD/bashrc $HOME/.bashrc
ln -sf $PWD/config $HOME/.config
