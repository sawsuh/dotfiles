import subprocess as sp
import time
import pyautogui
import Xlib.display

recordcmd = [
    "slop",
    "-t",
    "0",
    "-b",
    "0",
    "-c",
    "0.25882352941176473,0.25882352941176473,0.23921568627450981,0.5",
    "-l",
    "-f",
    "%w %h %x %y",
    "--nokeyboard",
]
recording = sp.run(recordcmd, stdout=sp.PIPE, stderr=sp.DEVNULL)
width, height, topx, topy = recording.stdout.decode("utf-8").split(" ")
width = int(width) - 8
height = int(height) - 8
topx = int(topx)
topy = int(topy)

sp.Popen(["urxvt", "-name", "float"])
time.sleep(0.150)

disp = Xlib.display.Display()
win = disp.get_input_focus().focus
win.configure(width=width, height=height, x=topx, y=topy)
win.set_input_focus(Xlib.X.RevertToParent, Xlib.X.CurrentTime)
disp.sync()

middlex = topx + width / 2
middley = topy + height / 2
win.set_input_focus(Xlib.X.RevertToParent, Xlib.X.CurrentTime)
disp.sync()
pyautogui.moveTo(middlex, middley)

