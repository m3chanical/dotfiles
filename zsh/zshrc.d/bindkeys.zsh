# bindkeys.zsh
#
#   This is where _most_ bindkey mappings live.
#
##################################################

# despite vim mode, its hard to beat 2 decades of stock bash usage
## [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word
## [Ctrl-LeftArrow] - move backward one word
bindkey '^[[1;5D' backward-word

# zsh's modal behavior is more like vi than vim in some
# cases (i.e. can't backspace past the last point you
# entered NORMAL mode).  This fixes that problem, giving
# more vim-like behavior.
bindkey "^?" backward-delete-char
