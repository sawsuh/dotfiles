#
if [ $(xrandr --listmonitors | grep -c HDMI1) -gt 0 ]
then
    xrandr --output HDMI1 --above eDP1 --mode 1680x1050
    #xrandr --output eDP1 --right-of HDMI1 --mode 1920x1080 --pos 2560x0 --rotate normal --output eDP1 --primary --mode 2560x1440 --pos 0x0 --rotate normal
    bspc monitor eDP1 -d one two three four five 
    bspc monitor HDMI1 -d six seven eight nine ten
    bspc wm --reorder-monitors eDP1 HDMI1
else
    bspc monitor -d one two three four five six seven eight nine ten
fi
bspc config border_width         3
bspc config bottom_monocle_padding 0
bspc config bottom_padding     0
bspc config left_monocle_padding 0
bspc config left_padding       0
bspc config right_monocle_padding 0
bspc config right_padding      0
bspc config top_monocle_padding 0
bspc config top_padding        0
bspc config window_gap          5
libinput-gestures-setup start&
pulseaudio --start&
xss-lock -- bash ~/.lock.sh &
udiskie&
