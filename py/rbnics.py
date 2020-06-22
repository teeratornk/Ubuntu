import os
import subprocess
import sys

inputArg = []
for eachArg in sys.argv:
	inputArg.append(eachArg)

home = inputArg[1]

os.chdir(home + "/Downloads")
subprocess.call(["sh", "-c", "git clone https://gitlab.com/RBniCS/RBniCS.git"])
os.chdir(home + "/Downloads/RBniCS")
subprocess.call(["sh", "-c", "python3 setup.py install --user"])
os.chdir(home + "/Downloads")
subprocess.call(["sh", "-c", "rm -rf RBniCS"])
