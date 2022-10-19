#!/usr/bin/env bash

for i in $(ls); do ln -sf $PWD/$i ~/.$i; done
