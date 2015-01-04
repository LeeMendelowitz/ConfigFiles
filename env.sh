#!/bin/bash
alias ls="ls --color=always"
alias lsd="ls -l | grep '^d'"
alias less="less -iR"
alias grep="grep --color"
alias serve="python -m SimpleHTTPServer"

stty -ixon # Fix Ctrl+S for the Ctrl+R reverse search

 ~/config/git-completion.bash

export PATH=~/config/bin:$PATH
