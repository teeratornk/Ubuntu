import os
import subprocess
import sys

inputArg = []
for eachArg in sys.argv:
	inputArg.append(eachArg)

password = inputArg[1]
home = inputArg[2]

os.chdir(home + "/Downloads")

subprocess.call(["sh", "-c", "wget -c https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb -O dropbox.deb"])
subprocess.call(["sh", "-c", "echo " + password + " | sudo dpkg -i dropbox.deb"])