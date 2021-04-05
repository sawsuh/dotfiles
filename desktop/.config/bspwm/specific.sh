xrandr --output DP-0 --primary --right-of DP-2 --mode 2560x1440 --rate 144 --pos 2560x0 --rotate normal --output DP-2 --mode 2560x1440 --pos 0x0 --rotate normal
bspc monitor DP-0 -d six seven eight nine ten
bspc monitor DP-2 -d one two three four five
bspc config border_width         4
bspc config bottom_padding     10
bspc config left_padding       10
bspc config right_padding      10
bspc config top_padding        10
bspc config window_gap          30
xset -dpms
