SINK=$(pactl list short sinks | awk -v max=0 '{if($1>=max){want=$1; max=$1}}END{print want} ') 
pactl -- set-sink-mute $SINK toggle
