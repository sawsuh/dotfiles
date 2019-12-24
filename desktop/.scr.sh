xcord=$(xdotool getmouselocation --shell | awk -F '=' '{print $2; exit}')
if [[ "$xcord" > 2560 ]]
then
	maim -f png -u -g 2560x1440+2560+0 screenshots/$(date +'%-d-%-m-%-y_%-R')mon2.png
else
	maim -f png -u -g 2560x1440+0+0 screenshots/$(date +'%-d-%-m-%-y_%-R')mon1.png
fi
sleep 1;
dunstify "screenshot taken"
