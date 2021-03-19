#!/bin/bash
cd $2
for entry in $(find . | cut -d"/" -f 2-); do
    path=$(echo "$(pwd)/$entry")
    dest=$(echo "$3/$entry")
    [[ $1 == "r" ]] && { [[ -f $path ]] && { [[ $(readlink -f $dest) == $path ]] && { echo "deleting $dest"; rm $dest; }; }; }
    [[ $1 == "s" ]] && { [[ -d "$path" ]] && { [[ -d "$dest" ]] || { echo "creating folder $dest"; mkdir $dest; }; }; }
    [[ $1 == "s" ]] && { [[ -f "$path" ]] && { [[ -f "$dest" ]] || { echo "creating symlink $dest to $path"; ln -s $path $dest; }; }; }
done
