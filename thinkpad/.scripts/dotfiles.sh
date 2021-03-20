#!/bin/bash
if [[ $1 == "s" ]]; then
    cd $2
    find . -path "./.*" | while IFS='' read -r path
    do
        [[ -d $path ]] && mkdir -pv $HOME${path#.}
        [[ -f $path ]] && ln -sv $(pwd)${path#.} $HOME${path#.}
    done
elif [[ $1 == "r" ]]; then
    find -P $HOME -type l | while IFS='' read -r path
    do 
        [[ $(readlink -f $path) == "$(realpath $2)${path#$HOME}" ]] && rm -v $path
    done
fi
