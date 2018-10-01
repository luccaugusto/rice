#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# If tmux is not started, start it
[[ -z "$TMUX" ]] && exec tmux

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#Let ctrl+s and ctrl+q free for use
stty stop ''; stty start '';

CYAN="\033[0;36m"

export PS1="\[\033[38;5;5m\][\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;3m\]\u\[$(tput sgr0)\]\[\033[38;5;4m\]@ \[$(tput sgr0)\]\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;9m\]\W\[$(tput sgr0)\]\[\033[38;5;13m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]\\$\[$(tput sgr0)\] "
