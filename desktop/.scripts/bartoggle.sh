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
    for process in $(pgrep -a polybar | awk '{print $1}')
    do
        polybar-msg -p $process cmd hide
    done
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
[[ -z $pid ]] && { barunmap; barspawn $mon "$cmd"; exit 0;} # if bar not running on current monitor
[[ -z $(xdotool search --pid $pid --onlyvisible) ]] && { barunmap; barmap $mon $pid; exit 0;}
    # if bar running on current monitor but not mapped
barunmap; exit 0 # if bar mapped on current monitor
