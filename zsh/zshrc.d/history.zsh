# history.zsh
#
#   This is where _everything_ related to the
#   history configuration lives.
#
##################################################

HISTSIZE=2000
SAVEHIST=$HISTSIZE
HISTFILE=$HOME/.zsh/history

# allow multiple sessions to append to one zsh history
setopt append_history
# save timestamp of command and duration
setopt extended_history
# don't add commands to history until session ends
setopt no_inc_append_history
# when trimming history, lose oldest dups first
setopt hist_expire_dups_first
# do not write events that are dups of prev events
setopt hist_ignore_dups
# don't write events if first char is a space
setopt hist_ignore_space
# when searching history, don't display dups
setopt hist_find_no_dups
# remove extra spaces before writing to history
setopt hist_reduce_blanks
# whenever the user enters a line with history substitution, don't execute
# the line directly; instead, perform history substitution and reload the
# line into the editing buffer
setopt hist_verify
# don't share history between concurrent shell instances
setopt no_share_history

# start typing + Ctrl+k - fuzzy find history backward
bindkey "^K" up-line-or-search
# start typing + Ctrl+j - fuzzy find history forward
bindkey "^J" down-line-or-search
