#!/usr/bin/env bash

# Get dotfiles dir (this script can be ran from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# First update dotfiles via git
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Helper functions
source $DOTFILES_DIR/etc/helpers.sh
probe_capabilities

# If a specific installer is specified, or if a list
# of specific installers is given, run only those;
# otherwise, just install everything
if [ "$#" -eq 0 ]
then
    echo "--------- INSTALLING EVERYTHING ---------"
    # Run all the installers
    for installer in $DOTFILES_DIR/*/install
    do
        print_program $installer
        source $installer
    done
else
    for prog in $@
    do
        # Run specified installer (if it exists)
        INSTALLER=$DOTFILES_DIR/$prog/install
        if [ -e $INSTALLER ]
        then
            print_program $INSTALLER
            source $INSTALLER
        else
            log_error "Invalid installer specified: $prog"
        fi
    done
fi

report_errors
