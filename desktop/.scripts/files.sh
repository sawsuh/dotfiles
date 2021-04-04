#!/bin/bash
eval $(xdotool getmouselocation --shell)
y=900
x=1642
b='bar1'
(( $X > 2560 )) && { x=4202; b='bar2'; }
[[ -z $(xdotool search --pid $(pgrep -f "polybar $b") --onlyvisible) ]] && y=972
tdrop -a -h 450 -w 900 -x $x -y $y -n 1 -f "--name stick1 -e ranger" kitty
