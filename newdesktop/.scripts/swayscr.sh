grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') screenshots/$(date +'%y-%-m-%-d_%-T').png
sleep 1;
notify-send "screenshot taken"
