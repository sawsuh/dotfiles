#!/bin/bash
pid=$(pgrep -a polybar | grep barski | awk '{print $1}')
# spawns bar if bar process doesn't exist then exits
[[ -z $pid ]] && { bspc config top_padding 70; { polybar barski&>/dev/null ; } & exit 0; }
wid=$(xdotool search --pid $pid --onlyvisible)
# maps bar if bar wid doesn't exist but pid does
# (no bar is drawn but process exists) then exits
[[ -z $wid ]] && { bspc config top_padding 70; xdotool windowmap "$(xdotool search --pid $pid)"; exit 0; }
# unmaps bar if bar is drawn 
xdotool windowunmap $wid
bspc config top_padding 20
