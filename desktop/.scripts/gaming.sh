if [ $1 == 'on' ]; then
    xrandr --output HDMI-A-0 --off
    xrandr --output DVI-D-1 --mode 1920x1080 --rate 144
else
    xrandr --output HDMI-A-0 --mode 2560x1440
    xrandr --output DVI-D-1 --mode 1920x1080 --rate 144 --right-of DVI-D-1
fi
