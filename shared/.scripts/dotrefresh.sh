#!/bin/bash
bash $1/shared/.scripts/dotfiles.sh $1 r
bash $1/shared/.scripts/dotfiles.sh "$1/$2" s
bash $1/shared/.scripts/dotfiles.sh "$1/shared" s
