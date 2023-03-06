# setopt.zsh
#
#   This is where misc setopts live.
#
##################################################

setopt no_beep
setopt interactive_comments

## Changing Directories ###################################################
# typing a directory name without 'cd' still changes working directory
setopt auto_cd
# if the argument to cd is the name of a parameter whose value is a valid
# directory, it will become the current directory
setopt cdablevars
# don't push the same directory onto the dir stack multiple times
setopt pushd_ignore_dups

## Expansion and Globbing #################################################
# treat #,~, and ^ as part of filename generation patterns
setopt extended_glob
# parameter expansion, command substitution, arithmetic expansions
setopt prompt_subst
# pass bad matches onto the command (i.e. git reset HEAD^1)
setopt no_nomatch
