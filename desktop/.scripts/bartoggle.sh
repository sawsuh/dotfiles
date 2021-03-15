#!/bin/bash
if [[ $(xdotool getmouselocation | awk -F '[ :]' '{print $2}') -gt 2560 ]]; then
    mon="DP-0"
    cmd="polybar bar2"
else
    mon="DP-2"
    cmd="polybar bar1"
fi
barspawn () {
    bspc config -m $1 bottom_padding 80
    eval $2&>/dev/null &
}
barunmap () {
    polybar-msg cmd hide
    xrandr -q | awk '/ connected/{print $1}' | xargs -I % bspc config -m % bottom_padding 10
}
barmap () { 
    bspc config -m $1 bottom_padding 80
    polybar-msg -p $2 cmd show
}
pid=$(pgrep -f "$cmd")
wid=$(xdotool search --pid $pid --onlyvisible)
barunmap
[[ -z $pid ]] && barspawn $mon "$cmd" 
[[ -z $wid ]] && barmap $mon $pid
