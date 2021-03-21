#!/bin/bash
mon="DP-2"
cmd="bar1"
[[ $(xdotool getmouselocation | awk -F '[ :]' '{print $2}') -gt 2560 ]] && { mon="DP-0"; cmd="bar2"; }
pid=$(pgrep -f "polybar $cmd")
wid=$(xdotool search --pid $pid --onlyvisible)
polybar-msg cmd hide
bspc config bottom_padding 10
[[ -z $pid ]] && { bspc config -m $mon bottom_padding 80; eval "polybar $cmd"&>/dev/null& exit 0; }
[[ -z $wid ]] && { bspc config -m $mon bottom_padding 80; polybar-msg -p $pid cmd show; }
