# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Pull config updates
if [ ! -f /tmp/wolf-user-configs-fetched ]; then
    touch /tmp/wolf-user-configs-fetched
    pull-configs > /dev/null
fi

# ----------------------------------------------
# User specific environment and startup programs

# If in tmux session, run neofetch
if [[ -n $TMUX && command -v neofetch >/dev/null 2>&1 ]]; then
    neofetch
fi

