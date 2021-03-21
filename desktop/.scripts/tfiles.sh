#!/bin/bash
barwid () {
    xdotool search --pid $(pgrep -f "polybar $1") --onlyvisible
}
makewin () {
    tdrop -a -h 600 -w 1100 -x $1 -y $2 -n 1 -f "--name stick1 -e ranger" kitty
}
eval $(xdotool getmouselocation --shell)
y=752
x=1442
if (( $X > 2560 )); then
    if [[ -z "$(barwid 'bar2')" ]]; then
        y=822
        x=4002
    else
        x=4002
    fi
elif [[ -z "$(barwid 'bar1')" ]]; then
    y=822
fi
makewin $x $y
