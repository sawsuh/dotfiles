#!/bin/bash
cmd="polybar barski"
pid=$(pgrep -f "$cmd")
wid=$(xdotool search --pid $pid --onlyvisible)
polybar-msg cmd hide
bspc config top_padding 20
[[ -z $pid ]] && eval "$cmd"&>/dev/null &
[[ -z $wid ]] && { bspc config top_padding 70; polybar-msg cmd show; }
