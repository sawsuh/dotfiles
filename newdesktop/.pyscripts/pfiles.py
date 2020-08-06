from barclass import bar
import subprocess as sp
import pyautogui


def files(x):
    sp.run(
        [
            "tdrop",
            "-a",
            "-h",
            "600",
            "-w",
            "1100",
            "-x",
            str(x),
            "-y",
            "742",
            "-n",
            "1",
            "-f",
            "--name stick1 -e ranger",
            "kitty",
        ]
    )


xcord = int(pyautogui.position()[0])

if xcord > 2560:
    files(3992)
else:
    files(1432)
