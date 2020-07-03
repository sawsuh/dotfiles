filename=$(date +'%y-%-m-%-d_%-T')
maim -sul -b 0 -c 0.5725490196,0.51372549019,0.45490196078,0.5 $filename.png
sleep 1;
dunstify "screenshot taken"
at now + 1 hour < <(echo "rm ~/$filename.png")
