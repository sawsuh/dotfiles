#!/bin/bash
eval $(xdotool getmouselocation --shell)
if (( $X > 2560 )); then
    tdrop -a -h 600 -w 1100 -x 4002 -y 752 -n 1 -f "--name stick1 -e ranger" kitty
else
    tdrop -a -h 600 -w 1100 -x 1442 -y 752 -n 1 -f "--name stick1 -e ranger" kitty
fi
