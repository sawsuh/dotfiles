#!/bin/bash
at $1 < <(echo "dunstify -a script $2")
