#!/bin/bash
if [[ $(xdotool getmouselocation | awk -F '[ :]' '{print $2}') -gt 2560 ]]; then
    mon="DP-0"
    cmd="polybar bar2"
else
    mon="DP-2"
    cmd="polybar bar1"
fi
barspawn () { # $1 = monitor, $2 = command, spawn bar on current monitor
    bspc config -m $1 bottom_padding 80
    eval $2&>/dev/null &
}
barunmap () { # unmap bar from all monitors and lower all monitors gaps
    polybar-msg -p $process cmd hide
    for monitor in $(xrandr -q | grep ' connected' | awk '{print $1}')
    do 
        bspc config -m $monitor bottom_padding 10
    done
}
barmap () { # $1 = monitor, $2 = pid, map bar on current monitor
    bspc config -m $1 bottom_padding 80
    polybar-msg -p $2 cmd show
}
pid=$(pgrep -f "$cmd")
wid=$(xdotool search --pid $pid --onlyvisible)
barunmap
[[ -z $pid ]] && barspawn $mon "$cmd" # if bar not running on current monitor
[[ -z $wid ]] && barmap $mon $pid
