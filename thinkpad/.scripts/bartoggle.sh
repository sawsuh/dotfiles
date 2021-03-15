#!/bin/bash
spawnbar () {
    bspc config top_padding 70
    polybar barski&>/dev/null &
}
mapbar () {
    bspc config top_padding 70
    polybar-msg cmd show
}
unmapbar() {
    polybar-msg cmd hide
    bspc config top_padding 20
} 
pid=$(pgrep -a polybar | grep barski | awk '{print $1}')
wid=$(xdotool search --pid $pid --onlyvisible)
unmapbar
[[ -z $pid ]] && spawnbar
[[ -z $wid ]] && mapbar
