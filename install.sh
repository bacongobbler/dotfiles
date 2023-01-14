#!/usr/bin/env bash

for i in $(ls --color=no); do ln -sf $PWD/$i ~/.$i; done
