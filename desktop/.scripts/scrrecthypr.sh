filename=$(date +'%y-%-m-%-d_%-T')
grim -g "$(slurp -s '#8d837480' -b '#00000000' -c '#00000000')" $filename.png
sleep 1;
dunstify "screenshot taken"
at now + 1 hour < <(echo "rm ~/$filename.png")
