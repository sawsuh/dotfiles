#!/bin/bash
bspc monitor DP-0 -d one two three four five six seven eight nine ten
xrandr --output DP-0 --mode 2560x1440 --rate 144 --pos 2560x0 --rotate normal
