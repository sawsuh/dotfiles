#!/bin/bash
pid=$(pgrep -a polybar | grep barski | awk '{print $1}')
[[ -z $pid ]] && { bspc config top_padding 70; { polybar barski&>/dev/null ; } & exit 0; }
wid=$(xdotool search --pid $pid --onlyvisible)
[[ -z $wid ]] && { bspc config top_padding 70; xdotool windowmap "$(xdotool search --pid $pid)"; exit 0; }
xdotool windowunmap $wid
bspc config top_padding 20
