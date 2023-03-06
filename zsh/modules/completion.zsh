# completion.zsh
#
#   This module handles the way zsh does
#   completion.
#
##################################################

# when completing from the middle of a word, move the curosr to
# the end of the word
setopt always_to_end
# show completion menu on sucessive tab press
# [DEPEND: unsetopt menu_complete]
setopt auto_menu
# perform completion from within a word/phrase
setopt complete_in_word
# do not auto-select the 1st completion entry
unsetopt menu_complete
# use fancy menu completion with highlighting
zmodload -i zsh/complist
# colorize autocomplete suggestions
zstyle ':completion:*' list-colors ''
# highlight current autocomplete selection
zstyle ':completion:*:*:*:*:*' menu select
# disable named-directories autocompletion
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
# use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path $HOME/.cache/zsh
# don't complete uninteresting users
zstyle ':completion:*:*:*:users' ignored-patterns \
        adm amanda apache at avahi avahi-autoipd beaglidx bin cacti canna \
        clamav daemon dbus distcache dnsmasq dovecot fax ftp games gdm \
        gkrellmd gopher hacluster haldaemon halt hsqldb ident junkbust kdm \
        ldap lp mail mailman mailnull man messagebus  mldonkey mysql nagios \
        named netdump news nfsnobody nobody nscd ntp nut nx obsrun openvpn \
        operator pcap polkitd postfix postgres privoxy pulse pvm quagga radvd \
        rpc rpcuser rpm rtkit scard shutdown squid sshd statd svn sync tftp \
        usbmux uucp vcsa wwwrun xfs '_*'
# enable git version control
zstyle ':vcs_info:*' enable git

# [Shift-Tab] - move through the completion menu backwards
if [[ "${terminfo[kcbt]}" != "" ]]
then
  bindkey "${terminfo[kcbt]}" reverse-menu-complete
fi
