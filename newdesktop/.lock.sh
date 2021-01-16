#!/bin/bash
i3lock -c 282828 -B 6 --insidevercolor=d79921ff --insidewrongcolor=d3869bff --insidecolor=32302fff --ringvercolor=a89984ff --ringwrongcolor=b16286ff --ringcolor=928374ff --linecolor=a89984ff --bshlcolor=689d6aff --separatorcolor=928374ff --verifcolor=ebdbb2ff --timecolor=ebdbb2ff --timestr="%-I %M %p" --verif-font=Iosevka --wrong-font=Iosevka --time-font=Iosevka --verifsize=16 -k --time-font=Iosevka --timesize=16 --date-font=Iosevka --datesize=16 --verifcolor=ebdbb2ff --datecolor=ebdbb2ff --wrongcolor=ebdbb2ff --wrongsize=16 --wrong-font=Iosevka --wrongtext="wrong" --veriftext="verifying"
pacmd set-card-profile alsa_card.pci-0000_09_00.1 output:hdmi-stereo-extra1
pacmd set-default-sink alsa_output.pci-0000_09_00.1.hdmi-stereo-extra1
