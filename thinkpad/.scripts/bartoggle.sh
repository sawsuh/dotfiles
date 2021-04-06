#!/bin/bash
cmd="polybar barski"
pid=$(pgrep -f "$cmd")
wid=$(xdotool search --pid $pid --onlyvisible)
polybar-msg cmd hide
bspc config top_padding 20
[[ -z $wid ]] && runcmd='bspc config top_padding 70; polybar-msg cmd show'
[[ -z $pid ]] && runcmd=`eval "$cmd"&>/dev/null &`
eval $runcmd
