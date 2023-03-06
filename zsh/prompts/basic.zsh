# basic.zsh
#
#   This is where _everything_ related to the
#   appearance of the prompt lives.
#
##################################################

# remove right prompt when input typed into prompt
setopt transient_rprompt

ZSHACK_PROMPT_BASIC="%n@%m:%~$ "
ZSHACK_PROMPT_MODE_INSERT=$ZSHACK_PROMPT_BASIC
ZSHACK_PROMPT_MODE_NORMAL=$ZSHACK_PROMPT_BASIC

# this will be changed by zle via the modal_prompt module
ZSHACK_PROMPT_MODE=$ZSHACK_PROMPT_BASIC

ZSHACK_PROMPT=$ZSHACK_PROMPT_BASIC
ZSHACK_PROMPT_FROZEN=$ZSHACK_PROMPT_BASIC
