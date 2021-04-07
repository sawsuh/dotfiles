#!/bin/bash
mon="DP-2"
cmd="bar1"
eval $(xdotool getmouselocation --shell)
[[ $X -gt 2560 ]] && { mon="DP-0"; cmd="bar2"; }
pid=$(pgrep -f "polybar $cmd")
wid=$(xdotool search --pid $pid --onlyvisible)
showflag=0
spawnflag=0
polybar-msg cmd hide
bspc config bottom_padding 10
[[ -z $wid ]] && { bspc config -m $mon bottom_padding 80; showflag=1; }
[[ -z $pid ]] && { showflag=0; spawnflag=1; }
((showflag)) && polybar-msg -p $pid cmd show
((spawnflag)) && eval "polybar $cmd"&>/dev/null&
