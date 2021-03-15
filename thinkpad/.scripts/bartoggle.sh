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
<<<<<<< HEAD
[[ -z $pid ]] && spawnbar
wid=$(xdotool search --pid $pid --onlyvisible)
[[ -z $wid ]] && mapbar "$(xdotool search --pid $pid)"
unmapbar $wid
=======
[[ -z $pid ]] && { spawnbar; exit 0; }
[[ -z $(xdotool search --pid $pid --onlyvisible) ]] && { mapbar; exit 0; }
unmapbar
>>>>>>> 1e9ffb98b500da95078aab78a0ae4882516fcace
