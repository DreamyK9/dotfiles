#!/bin/bash

OS=$(uname)
if [[ $OS =~ ^(CYGWIN|MINGW)* ]]; then
  OS="Windows"
fi

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

# OS specific rc
case "$OS" in
    Linux)
        . ~/.osrc/linux
    ;;
    Darwin)
        . ~/.osrc/mac
    ;;
    Windows)
        . ~/.osrc/windows
    ;;
    *)
        echo "ERROR: Couldn't detect OS"
    ;;
esac
export OS

# Load aliases and functions from .bashrc.d
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
