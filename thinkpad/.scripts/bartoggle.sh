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
pid=$(pgrep -f "polybar barski")
wid=$(xdotool search --pid $pid --onlyvisible)
unmapbar
[[ -z $pid ]] && spawnbar
[[ -z $wid ]] && mapbar
