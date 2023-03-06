# dir_stack.zsh
#
#   This module provides the means to keep
#   track and manipulate the recent directory
#   history.
#
##################################################

# remember 8 most recent directories
DIRSTACKSIZE=8
# auto pushd when change directory (cd)
setopt autopushd
# perform pushd silently
setopt pushdsilent
# use -3 instead of +3, for history item 3 (for example)
setopt pushdminus
# pushd w/o args pushes $HOME (match cd behavior)
setopt pushdtohome
# view directory stack more easily
alias ds='dirs -v'
