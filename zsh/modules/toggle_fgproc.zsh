# dir_stack.zsh
#
#   This module modifies the behavior of ^Z such
#   that if it is pressed at the prompt, the most
#   recently suspended task comes to the forground.
#
######################################################

_zsh_ctrlz () {
    if [[ $#BUFFER -eq 0 ]]; then
        fg
        zle redisplay
    else
        zle push-input
    fi
}

zle -N _zsh_ctrlz
bindkey '^Z' _zsh_ctrlz
