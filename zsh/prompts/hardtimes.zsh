# hardtimes.zsh
#
#   This prompt has the functionality of
#   powerline.zsh, but doesn't use colors or
#   special characters
#
##################################################

# remove right prompt when input typed into prompt
setopt transient_rprompt

function _zsh_prompt_git {
    local branch=$(_zsh_git_branch)
    if [ ! -z $branch ]
    then

        # make prompt collapse
        if [ $COLUMNS -lt 50 ]
        then
            branch="\b"
        fi

        # add on the prompt if the git repo is dirty
        # what is add is different depending on if we are
        # using the modal_prompt module
        if [ $(_zsh_git_dirty) == "0" ]
        then
            echo ":+ ${branch}"
        else
            echo ":c ${branch}"
        fi
    fi
}

ZSHACK_PROMPT_MODE_INSERT="%c"
ZSHACK_PROMPT_MODE_NORMAL="* %c"

# this will be changed by zle via the modal_prompt module
ZSHACK_PROMPT_MODE=$ZSHACK_PROMPT_MODE_INSERT

ZSHACK_PROMPT='${ZSHACK_PROMPT_MODE}$(_zsh_prompt_git)$ '
ZSHACK_PROMPT_FROZEN=${ZSHACK_PROMPT}
