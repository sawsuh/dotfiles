filename=$(date +'%y-%-m-%-d_%-T')
grim screenshots/$filename.png
sleep 1;
dunstify "screenshot taken"
