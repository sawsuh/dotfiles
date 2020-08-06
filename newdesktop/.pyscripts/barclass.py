import subprocess as sp
import re
import psutil

class bar:
    def __init__(self, name, monitor):
        self.name = name
        self.monitor = monitor

    def barpid(self):
        for pid in psutil.pids():
            try:
                if psutil.Process(pid).cmdline()[1] == self.name:
                    return pid
            except IndexError:
                continue
        return False

    def barvisible(self):
        if not self.barpid():
            return False
        cmd = ["xdotool", "search", "--pid",
               str(self.barpid()), "--onlyvisible"]
        output = sp.run(cmd, stdout=sp.PIPE)  # check vis
        return output.stdout.decode("utf-8")  # return wid if exists

    def barunmap(self):
        if not self.barpid():
            return False
        sp.run(["polybar-msg", "-p", str(self.barpid()), "cmd", "hide"])
        sp.run(["bspc", "config", "-m", str(self.monitor), "bottom_padding", "0"])

    def barmap(self):
        if not self.barpid():
            return False
        sp.run(["bspc", "config", "-m", str(self.monitor), "bottom_padding", "70"])
        sp.run(["polybar-msg", "-p", str(self.barpid()), "cmd", "show"])

    def barspawn(self):
        sp.run(["bspc", "config", "-m", str(self.monitor), "bottom_padding", "70"])
        sp.Popen(["polybar", str(self.name)])
