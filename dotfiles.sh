#!/bin/bash
if [[ $2 == "s" ]]; then
    cd $1
    find . -path "./*" | while IFS='' read -r path
    do
        [[ -d $path ]] && mkdir -pv $HOME${path#.}
        [[ -f $path ]] && ln -sv $(pwd)${path#.} $HOME${path#.}
    done
elif [[ $2 == "r" ]]; then
    find -P $HOME -type l | while IFS='' read -r path
    do 
        [[ $(readlink -f $path) == "$(realpath $1)"* ]] && rm -v $path
    done
fi
