import os,subprocess, sys

password=[]
for eachArg in sys.argv:
	password.append(eachArg)

password=password[0]

subprocess.call(["sh","-c","echo "+password+" | sudo rm -rf $HOME/.config/sublime-text-3/Packages/User/*"])
subprocess.call(["sh","-c","sudo cp -r subl3/* $HOME/.config/sublime-text-3/Packages/User/"])