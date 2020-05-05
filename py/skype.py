import os
import subprocess
import sys

inputArg = []
for eachArg in sys.argv:
	inputArg.append(eachArg)

password = inputArg[1]
home = inputArg[2]

os.chdir(home + "/Downloads")

subprocess.call(["sh", "-c", "wget https://go.skype.com/skypeforlinux-64.deb"])
subprocess.call(["sh", "-c", "echo " + password + " | sudo -S dpkg -i skypeforlinux-64.deb"])