if [ $1 == 'on' ]; then
    xrandr --output DVI-D-1 --off
    xrandr --output HDMI-A-0 --mode 1920x1080 --rate 144
else
    xrandr --output DVI-D-1 --mode 2560x1440
    xrandr --output HDMI-A-0 --mode 1920x1080 --rate 144 --right-of DVI-D-1
fi
