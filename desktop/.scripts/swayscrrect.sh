filename=$(date +'%y-%-m-%-d_%-T')
grim -g "$(slurp -b 28282888 -s ebdbb288)" $filename.png
sleep 1;
notify-send "screenshot taken"
at now + 1 hour < <(echo "rm ~/$filename.png")
