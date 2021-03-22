#!/bin/bash
IFS=' ' read w h x y < <(slop -t 0 -b 0 -c "0.25882352941176473,0.25882352941176473,0.23921568627450981,0.5" -l -f "%w %h %x %y" --nokeyboard)
(( w -= 8 ))
(( h -= 8 ))
kitty -o initial_window_width=$w -o initial_window_height=$h -o remember_window_size=false --name float& 
while [ -z "$wid" ]; do
    for win in $(xdotool search --desktop=$(xdotool get_desktop) --class .); do
        eval "$(xdotool getwindowgeometry --shell $win)"
        [ "$WIDTH" -eq "$w" ] && [ "$HEIGHT" -eq "$h" ] && wid="$win"
    done
    sleep 0.05
done
xdotool windowmove $wid $x $y
xdotool mousemove $(( x + (w/2) )) $(( y + (h/2) ))
xdotool windowactivate $wid
