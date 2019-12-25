filename=$(date +'%-d-%-m-%-y_%T')
maim -sul -b 0 -c 0.25882352941176473,0.25882352941176473,0.23921568627450981,0.5 $filename.png
sleep 1;
dunstify "screenshot taken"
at now + 1 hour < <(echo "rm ~/$filename.png")
