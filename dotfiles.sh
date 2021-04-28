#!/bin/bash
cd $1
case $2 in
    "s") # in $HOME, recreate dirs, link to files, and link to link dests of $1
        find -P . -path "./*" \
            \( -type d -exec bash -c 'mkdir -pv "$HOME${0#.}"' {} \; \) -o \
            \( -type l -exec bash -c 'ln -srv "$(readlink -ef $0)" "$HOME${0#.}"' {} \; \) -o \
            \( -type f -exec bash -c 'ln -srv "$0" "$HOME${0#.}"' {} \; \);;
    "r") # in $HOME, delete all links pointing into $1
        find -P $HOME \( -path "$(pwd)" -prune \) -o \
            \( -type l -exec bash -c '[[ $(readlink -ef $0) == "$(pwd)"* ]] && rm -v $0' {} \; \);;
esac
