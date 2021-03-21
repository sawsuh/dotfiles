#!/bin/bash
eval $(xdotool getmouselocation --shell)
y=752
x=1442
b='bar1'
(( $X > 2560 )) && { x=4002; b='bar2'; }
[[ -z "$(xdotool search --pid $(pgrep -f \"polybar $b\") --onlyvisible)" ]] && y=822
tdrop -a -h 600 -w 1100 -x $x -y $y -n 1 -f "--name stick1 -e ranger" kitty
