import os,subprocess, sys

password=[]
for eachArg in sys.argv:
	password.append(eachArg)

password=password[0]

subprocess.call(["sh","-c","echo "+password+" | sudo -S apt -y install apt-transport-https ca-certificates curl software-properties-common"])
subprocess.call(["sh","-c","curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -"])
subprocess.call(["sh","-c","sudo add-apt-repository 'deb https://download.sublimetext.com/ apt/stable/'"])
subprocess.call(["sh","-c","sudo apt update"])
subprocess.call(["sh","-c","sudo apt -y install build-essential sublime-text deborphan git cmake make snap pip3"])
subprocess.call(["sh","-c","echo "+password+" | sudo -S apt -y install texlive-full"])