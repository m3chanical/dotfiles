# alias.zsh
#
#   This is where "normal" aliases live.
#
##################################################

# NOTES:
# 1. coreutils-8.28 changes the default ls quoting behavior
#    (https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=813164#226)
#    So, we now use '--quoting-stype=literal' to opt-out

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto --quoting-style=literal'
    alias less='less -XF'
    alias lless='ls -la --color=always | less -R'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias espeak='espeak -v mb-en1 -s 120'

# import machine specific aliases
if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
fi
