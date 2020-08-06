from barclass import bar
import sys

currentbar = bar("pop1", "DVI-D-1")
otherbar = bar("pop2", "HDMI-A-0")
if sys.argv[1] == "2":
    currentbar, otherbar = otherbar, currentbar

if currentbar.barpid():
    if currentbar.barvisible():
        currentbar.barunmap()
    else:
        currentbar.barmap()
        otherbar.barunmap()
else:
    currentbar.barspawn()
    otherbar.barunmap()
