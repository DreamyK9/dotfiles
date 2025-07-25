#!/bin/bash

OS=$(uname)
if [[ $OS =~ ^(CYGWIN|MINGW)* ]]; then
  OS="Windows"
fi
if [ "$WSLENV" ]; then
    OS="Linux"
fi
export OS

# Load custom shell libraries
if [ -d ~/.local/lib/sh ]; then
    for lib in ~/.local/lib/sh/*; do
        if [ -f "$lib" ]; then
            . "$lib"
        fi
    done
fi
unset lib

# User specific environment
pathappend $HOME
pathappend ~/.local/bin
export PATH

# Load aliases and functions from .bashrc.d
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

. "$HOME/.local/bin/env"
