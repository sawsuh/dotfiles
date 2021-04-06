#!/bin/bash
mon="DP-2"
cmd="bar1"
eval $(xdotool getmouselocation --shell)
[[ $X -gt 2560 ]] && { mon="DP-0"; cmd="bar2"; }
pid=$(pgrep -f "polybar $cmd")
wid=$(xdotool search --pid $pid --onlyvisible)
polybar-msg cmd hide; bspc config bottom_padding 10
[[ -z $wid ]] && runcmd=`bspc config -m $mon bottom_padding 80; polybar-msg -p $pid cmd show;`
[[ -z $pid ]] && runcmd=`eval "polybar $cmd"&>/dev/null&`
eval $runcmd
