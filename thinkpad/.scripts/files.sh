if [[ -n $1 ]]
then
    tdrop -a -h 500 -w 850 -x 1054 -y 564 -n 1 -f "--class stick1 -o font_size=13 -e ranger" kitty	
else
    tdrop -a -h 500 -w 850 -x 1054 -y 564 -n 1 -f "--name stick1 -e ranger" kitty	
fi
