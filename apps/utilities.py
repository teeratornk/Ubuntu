import os,subprocess, sys

password=[]
for eachArg in sys.argv:
	password.append(eachArg)

password=password[0]

subprocess.call(["sh","-c","wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"])
subprocess.call(["sh","-c","echo "+password+" | sudo -S dpkg -i google-chrome-stable_current_amd64.deb"])
subprocess.call(["sh","-c","sudo apt update"])
subprocess.call(["sh","-c","sudo apt -y remove --purge firefox firefox-local-en"])
subprocess.call(["sh","-c","sudo apt autoremove --purge"])
subprocess.call(["sh","-c","sudo apt autoclean"])
subprocess.call(["sh","-c","echo "+password+" | sudo -S apt -y install gimp pinta mpv"])
subprocess.call(["sh","-c","echo "+password+" | sudo -S snap install wps-office spotify ao"])