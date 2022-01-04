#bspc monitor -d one two three four five six seven eight nine ten
xrandr --output HDMI1 --primary --right-of eDP1 --mode 2560x1440 --pos 1920x0 --rotate normal --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal
bspc monitor eDP1 -d one two three four five 
bspc monitor HDMI1 -d six seven eight nine ten
bspc config border_width         3
bspc config bottom_monocle_padding -10
bspc config bottom_padding     20
bspc config left_monocle_padding -10
bspc config left_padding       20
bspc config right_monocle_padding -10
bspc config right_padding      20
bspc config top_monocle_padding -10
bspc config top_padding        20
bspc config window_gap          25
libinput-gestures-setup start&
pulseaudio --start&
xss-lock -- bash ~/.lock.sh &
