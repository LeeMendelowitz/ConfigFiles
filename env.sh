#!/bin/bash
# Set up bash environment with useful aliases and functions
###########################################################

alias ls="ls --color=always"
alias lsd="ls -l | grep '^d'"
alias less="less -iR"
alias grep="grep --color"
alias serve="python -m SimpleHTTPServer"
alias ports="sudo lsof -i | grep -E '(ESTABLISHED|LISTEN)'"
alias PATH='echo $PATH | tr ":" "\n"'

stty -ixon # Fix Ctrl+S for the Ctrl+R reverse search

 ~/config/git-completion.bash

export PATH=~/config/bin:$PATH # Add our bin directory to path
export EDITOR=`which vi`

################################################################################
# These find source functions can be used to grep in source files. For example:
#
#    find_c_source "find_alignments"
#
find_c_source () {
    find -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' | xargs -I {} grep -Hn --color $1 {}
}

find_py_source () {
    find -name '*.py' | xargs -I {} grep -Hn --color $1 {}
}

find_R_source () {
    find -name '*.R' | xargs -I {} grep -Hn --color $1 {}
}

find_source () {
    find -name '*.sh' -o -name '*.py' -o -name '*.R' -o -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' | xargs -I {} grep -Hn --color $1 {}
}
################################################################################


################################################################################
# Preserve the header in output, and perform action only on body
# Example:
#     ps -ef | body grep "python"
# Src: Command Line Kung Fu book
body() {
    IFS= read -r header
    printf '%s\n' "$header"
    "$@"
}

###################################
# print the path nicely!
path(){
    old=$IFS
    IFS=:
    printf "%s\n" $PATH
    IFS=$old
}
