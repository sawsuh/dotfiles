import subprocess as sp

pgrep = sp.run(["pgrep", "-a", "polybar"], stdout=sp.PIPE)  # grep polybar pids
processes = pgrep.stdout.decode("utf-8")  # get output
barpid = processes.split(" ")[0]  # bar pid

if barpid:
    widcmd = ["xdotool", "search", "--pid", str(barpid), "--onlyvisible"]
    xdowid = sp.run(widcmd, stdout=sp.PIPE)
    wid = xdowid.stdout.decode("utf-8")  # get wid
    if wid:
        sp.run(["polybar-msg", "cmd", "hide"],
               stdout=sp.DEVNULL, stderr=sp.DEVNULL)
        sp.run(["bspc", "config", "top_padding", "20"])
    else:
        sp.run(["bspc", "config", "top_padding", "70"])
        sp.run(["polybar-msg", "cmd", "show"],
               stdout=sp.DEVNULL, stderr=sp.DEVNULL)
else:
    sp.run(["bspc", "config", "top_padding", "70"])
    sp.run(["polybar", "barski"], stdout=sp.DEVNULL, stderr=sp.DEVNULL)
