#!/bin/bash
eval $(xdotool getmouselocation --shell)
if (( $X > 2560 )); then
    tdrop -a -h 600 -w 1100 -x 3992 -y 742 -n 1 -f "--name stick1 -e ranger" kitty
else
    tdrop -a -h 600 -w 1100 -x 1432 -y 742 -n 1 -f "--name stick1 -e ranger" kitty
fi
