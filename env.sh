#!/bin/bash
alias ls="ls --color=always"
alias lsd="ls -l | grep '^d'"
alias less="less -iR"
alias grep="grep --color"
alias serve="python -m SimpleHTTPServer"
alias ports="sudo lsof -i | grep -E '(ESTABLISHED|LISTEN)'"

stty -ixon # Fix Ctrl+S for the Ctrl+R reverse search

 ~/config/git-completion.bash

export PATH=~/config/bin:$PATH
export EDITOR=`which vi`



# Awesome Functions!

find_c_source () {
    find -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' | xargs -I {} grep -Hn --color $1 {}
}

find_py_source () {
    find -name '*.py' | xargs -I {} grep -Hn --color $1 {}
}

find_source () {
    find -name '*.sh' -o -name '*.py' -o -name '*.R' -o -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' | xargs -I {} grep -Hn --color $1 {}
}

