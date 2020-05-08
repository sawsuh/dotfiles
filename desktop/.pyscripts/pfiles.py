from barclass import bar
import subprocess as sp
import pyautogui


def files(x, y):
    sp.run(
        [
            "tdrop",
            "-a",
            "-h",
            "600",
            "-w",
            "900",
            "-x",
            str(x),
            "-y",
            str(y),
            "-n",
            "1",
            "-f",
            "-name stick1 -e vifm",
            "urxvt",
        ]
    )


xcord = int(pyautogui.position()[0])

left = bar("pop1", "DVI-D-1")
right = bar("pop2", "HDMI-A-0")

if xcord > 2560:
    if right.barvisible():
        files(4202, 752)
    else:
        files(4202, 822)
else:
    if left.barvisible():
        files(1642, 752)
    else:
        files(1642, 822)
