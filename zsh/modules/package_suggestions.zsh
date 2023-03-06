# package_suggestions.zsh
#
#   Sources zsh_command_not_found if
#   command-not-found is present on the system
#
##################################################

if [ -f /etc/zsh_command_not_found ]
then
    source /etc/zsh_command_not_found
fi
