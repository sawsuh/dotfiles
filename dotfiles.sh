#!/bin/bash
cd $1
case $2 in
    "s")
        find . -path "./*" \( -type d -exec bash -c 'mkdir -pv "$HOME${0#.}"' {} \; \) -o \( -type f -exec bash -c 'ln -srv "$0" "$HOME${0#.}"' {} \; \);;
    "r")
        find -P $HOME -type l -exec bash -c '[[ $(readlink -f $0) == "$(pwd)"* ]] && rm -v $0' {} \;;;
esac
