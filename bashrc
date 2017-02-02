#!/bin/bash

##########################################
## Source this file from your ~/.bashrc ##
##########################################

dir=$(dirname $(test -L "$BASH_SOURCE" && readlink -f "$BASH_SOURCE" || echo "$BASH_SOURCE"))

export PATH=~/bin:/opt/bin:${PATH}

for script in $dir/bash_*.sh ;do
    if [ -f $script ]; then
        echo "sourcing $script"
        source $script
    fi
done


PS1='[$(date +%H:%M:%S)]'${PS1}

# Make sure these variables are defined ONLY ONCE and only ONLY HERE.
export HISTSIZE=50000
export HISTFILESIZE=50000
export HISTTIMEFORMAT="%Y%m%d_%H%M%S "
export HISTCONTROL=ignoreboth
export PROMPT_COMMAND='history -a'
shopt -s histappend
