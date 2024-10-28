#!/bin/bash

# Load custom shell libraries
if [ -d ~/lib/sh ]; then
    for lib in ~/lib/sh/*; do
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
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# OS specific rc
OS=$(uname)

case "$OS" in
    Linux)
    . .linuxrc
        ;;
    Darwin)
    . .macrc
        ;;
    CYGWIN* | MINGW*)
    . .windowsrc
        ;;
esac
