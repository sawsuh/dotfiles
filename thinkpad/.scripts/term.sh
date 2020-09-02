#!/bin/bash
dims=$(slop -t 0 -b 0 -c "0.25882352941176473,0.25882352941176473,0.23921568627450981,0.5" -l -f "%w %h %x %y" --nokeyboard)
IFS=' ' read w h x y <<< $dims

kitty -o initial_window_width=$w -o initial_window_height=$h -o remember_window_size=false --name float& 
sleep 0.5

windows=$(xdotool search --desktop=$(xdotool get_desktop) --class .)
wid=''
for win in $windows
do
    width=$(xdotool getwindowgeometry $win | sed -n 3p | awk -F '[:|x]' '{print $2}')
    height=$(xdotool getwindowgeometry $win | sed -n 3p | awk -F '[:|x]' '{print $3}')
    if [ "$width" -eq "$w" ] && [ "$height" -eq "$h" ];
    then
        wid="$win"
    fi
done

xdotool windowmove $wid $x $y
(( midx= x + (w/2) ))
(( midy= y + (h/2) ))

sleep 0.2
xdotool mousemove $midx $midy
xdotool windowactivate $wid
