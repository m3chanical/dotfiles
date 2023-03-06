function zle-line-init zle-keymap-select {
    echoti smkx
    PROMPT=$ZSHACK_PROMPT
    RPROMPT=$ZSHACK_RPROMPT

    case $KEYMAP in
        vicmd)
            ZSHACK_PROMPT_MODE=$ZSHACK_PROMPT_MODE_NORMAL
            ;;
        *)
            ZSHACK_PROMPT_MODE=$ZSHACK_PROMPT_MODE_INSERT
            ;;
    esac
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# this zle widget it executed when return is pressed we are going to use it
# to "freeze" out the prompt into grayscale or something non-distracting
function zle-line-finish {
    echoti rmkx
    PROMPT=$ZSHACK_PROMPT_FROZEN
    zle reset-prompt
}
zle -N zle-line-finish

# make it so that ^C doesn't leave non-grayscale prompts all over the place
handle-interrupt() {
    PROMPT=$ZSHACK_PROMPT_FROZEN
    zle reset-prompt
    zle -I && zle .kill-buffer
    PROMPT=$ZSHACK_PROMPT
    echo
    zle reset-prompt
}
zle -N handle-interrupt
TRAPINT() { zle && zle handle-interrupt }

export KEYTIMEOUT=1
