from subprocess import DEVNULL, PIPE
import psutil
import sys

cmd_list = "ganache-cli --hardfork istanbul"
out = DEVNULL if sys.platform == "win32" else PIPE

psutil.Popen(cmd_list, stdin=DEVNULL, stdout=out, stderr=out, shell=True)

