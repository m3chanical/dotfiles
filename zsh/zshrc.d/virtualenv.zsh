# virtualenv.zsh
#
#   Simply source in virtualenvwrapper.sh if it
#   exists on the system.
#
##################################################

VIRTUAL_ENV_WRAPPER_LOCATIONS=(
    "/usr/local/bin/virtualenvwrapper.sh"
    "/usr/share/virtualenvwrapper/virtualenvwrapper.sh"
)

for VIRTUAL_ENV_WRAPPER in $VIRTUAL_ENV_WRAPPER_LOCATIONS;
do
    if [ -f $VIRTUAL_ENV_WRAPPER ]
    then
        source $VIRTUAL_ENV_WRAPPER
        break
    fi
done
