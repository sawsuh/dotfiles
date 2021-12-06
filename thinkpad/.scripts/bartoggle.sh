#!/bin/bash
cmd="polybar barski"
pid=$(pgrep -f "$cmd")
wid=$(xdotool search --pid $pid --onlyvisible)
show=0
spawn=0
[[ -z $wid ]] && { bspc config -m eDP1 top_padding 70; show=1; }
[[ -z $pid ]] && { show=0; spawn=1; }
((show)) && polybar-msg cmd show
((spawn)) && eval "$cmd"&>/dev/null&
((show + spawn)) || { polybar-msg cmd hide; bspc config -m eDP1 top_padding 20; }
