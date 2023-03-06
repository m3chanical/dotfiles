# path.zsh
#
#   This is where PATH & LD_LIBRARY_PATH get modified.
#
########################################################

# set PATH so it includes private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes scripts if it exists
if [ -d "$HOME/scripts" ] ; then
    PATH="$HOME/scripts:$PATH"
fi

if [ -d "$HOME/lib" ] ; then
    LD_LIBRARY_PATH="$HOME/lib:$LD_LIBRARY_PATH"
fi
