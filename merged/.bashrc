#!/bin/bash

# Load custom shell libraries
if [ -d ~/lib/sh ]; then
    for lib in ~/.local/lib/sh/*; do
        if [ -f "$lib" ]; then
            . "$lib"
        fi
    done
fi
unset lib

# Load aliases and functions from .bashrc.d
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# User specific environment
pathappend $HOME
pathappend ~/.local/bin
export PATH

# OS specific rc
OS=$(uname)

case "$OS" in
    Linux)
        . .osrc/linux
    ;;
    Darwin)
        . .osrc/mac
    ;;
    CYGWIN* | MINGW*)
        . .osrc/windows
    ;;
    *)
        echo "ERROR: Couldn't detect OS"
    ;;
esac
