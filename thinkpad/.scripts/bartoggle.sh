#!/bin/bash

toggle_bar () {
    cmd="polybar $1"
    pid=$(pgrep -f "^$cmd$")
    wid=$(xdotool search --pid "$pid" --onlyvisible)
    show=0
    spawn=0
    [[ -z $wid ]] && { bspc config -m "$2" top_padding 70; show=1; }
    [[ -z $pid ]] && { show=0; spawn=1; }
    ((show)) && polybar-msg -p "$pid" cmd show
    ((spawn)) && eval "$cmd"&>/dev/null&
    ((show + spawn)) || { polybar-msg -p "$pid" cmd hide; bspc config -m "$2" top_padding 20; }
}

mon="eDP1"
cmd="barski"
eval $(xdotool getmouselocation --shell)
[[ $(xrandr --listmonitors | grep -c HDMI1) -gt 0 ]] && [[ $Y -lt 1050 ]] && { mon="HDMI1"; cmd="barski2"; }
toggle_bar "$cmd" "$mon"
