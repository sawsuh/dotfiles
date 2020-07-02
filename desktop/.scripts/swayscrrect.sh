filename=$(date +'%y-%-m-%-d_%-T')
grim -g "$(slurp -b 28282888 -s 92837488)" $filename.png
sleep 1;
notify-send "screenshot taken"
at now + 1 hour < <(echo "rm ~/$filename.png")
