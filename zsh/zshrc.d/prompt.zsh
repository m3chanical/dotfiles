# prompt.zsh
#
#   This is where we define the location of the
#   prompts directory, set the default prompt,
#   and define prompt related functions
#
##################################################

# This is where prompt definitions live
ZSH_PROMPT_PATH=${HOME}'/.zsh/prompts'


# Utility function for changing the zsh prompt
# More elegant than manually sourcing font configs
chprompt() {
    local PROMPT_FULLPATH=${ZSH_PROMPT_PATH}/${1}".zsh"
    if [ -f "${PROMPT_FULLPATH}" ]
    then
        source $PROMPT_FULLPATH
    else
        print "'$1' does not exist"
    fi
}


# If $TERM contains "256color" use the powerline
# prompt by default, otherwise use the basic prompt
if strcontains $TERM "256color"
then
    chprompt powerline
else
    chprompt hardtimes
fi
