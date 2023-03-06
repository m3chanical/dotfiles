# functions.zsh
#
#   This is where we define useful utility
#   functions.
#
##################################################


# Check if "string" contaings "substring"
# Returns 0 on success, otherwise 1
strcontains() {
    local string=$1
    local substring=$2

    if test "${string#*$substring}" != "$string"
    then
        return 0
    else
        return 1
    fi
}
