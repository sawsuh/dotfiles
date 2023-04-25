#!/bin/bash
bspc monitor DP-2 -d one two three four five six seven eight nine ten
xrandr --output DP-2 --mode 2560x1440 --rate 144 --pos 2560x0 --rotate normal --output DP-0 --off
