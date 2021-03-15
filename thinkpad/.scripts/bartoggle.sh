#!/bin/bash
cmd="polybar barski"
spawnbar () {
    bspc config top_padding 70
    eval "$cmd"&>/dev/null &
}
mapbar () {
    bspc config top_padding 70
    polybar-msg cmd show
}
unmapbar() {
    polybar-msg cmd hide
    bspc config top_padding 20
} 
pid=$(pgrep -f "$cmd")
wid=$(xdotool search --pid $pid --onlyvisible)
unmapbar
[[ -z $pid ]] && spawnbar
[[ -z $wid ]] && mapbar
