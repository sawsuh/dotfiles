#!/bin/bash
cd $2
if [[ $1 == "r" ]]; then
    for entry in $(find . | cut -d"/" -f 2-); do
        path=$(echo "$(pwd)/$entry")
        dest=$(echo "$3/$entry")
        [[ -f $path ]] && { [[ $(readlink -f $dest) == $path ]] && { echo "deleting $dest"; rm $dest; }; }
    done
elif [[ $1 == "s" ]]; then
    for entry in $(find . | cut -d"/" -f 2-); do
        path=$(echo "$(pwd)/$entry")
        dest=$(echo "$3/$entry")
        [[ -d "$path" ]] && { [[ -d "$dest" ]] || { echo "creating folder $dest"; mkdir $dest; }; }
        [[ -f "$path" ]] && { [[ -f "$dest" ]] || { echo "creating symlink $dest to $path"; ln -s $path $dest; }; }
    done
fi
