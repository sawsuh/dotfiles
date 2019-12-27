#!/bin/bash
alarm_text="$*"
at $1 < <(echo "dunstify -a script \"$alarm_text\"")
