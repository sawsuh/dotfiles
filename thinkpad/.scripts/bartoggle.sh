#!/bin/bash
spawnbar () {
    bspc config top_padding 70
    polybar barski&>/dev/null &
    exit 0
}
mapbar () {
    bspc config top_padding 70
    xdotool windowmap $1
    exit 0
}
unmapbar() {
    xdotool windowunmap $1
    bspc config top_padding 20
} 
pid=$(pgrep -a polybar | grep barski | awk '{print $1}')
[[ -z $pid ]] && spawnbar
wid=$(xdotool search --pid $pid --onlyvisible)
[[ -z $wid ]] && { mapbar "$(xdotool search --pid $pid)"; }
unmapbar $wid
