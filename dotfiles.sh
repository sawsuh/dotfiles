#!/bin/bash
cd $1
case $2 in
    "s")
        find . -path "./*" | while IFS='' read -r path; do
            [[ -d $path ]] && mkdir -pv $HOME${path#.}
            [[ -f $path ]] && ln -srv $path $HOME${path#.}
        done;;
    "r")
        find -P $HOME -type l | while IFS='' read -r path; do
            [[ $(readlink -f $path) == "$(pwd)"* ]] && rm -v $path
        done;;
esac
