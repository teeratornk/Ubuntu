import os
import subprocess
import sys

inputArg = []
for eachArg in sys.argv:
	inputArg.append(eachArg)

password = inputArg[1]
home = inputArg[2]

os.chdir(home + "/Downloads")

subprocess.call(["sh", "-c", "wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest"])
subprocess.call(["sh", "-c", "echo " + password + " | sudo dpkg -i mendeleydesktop-latest"])