#!/bin/bash
dims=$(slop -t 0 -b 0 -c "0.25882352941176473,0.25882352941176473,0.23921568627450981,0.5" -l -f "%w %h %x %y" --nokeyboard)
IFS=' ' read w h x y <<< $dims

kitty --name float& 
sleep 0.5

wid=$(xdotool getactivewindow)
xdotool windowsize $wid $w $h
xdotool windowmove $wid $x $y
(( midx= x + (w/2) ))
(( midy= y + (h/2) ))

sleep 0.2
xdotool mousemove $midx $midy
dotool windowactivate $wid
