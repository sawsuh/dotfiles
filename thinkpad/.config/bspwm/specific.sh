bspc monitor -d one two three four five six seven eight nine ten
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
