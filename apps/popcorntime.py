import os,subprocess, sys

password=[]
for eachArg in sys.argv:
	password.append(eachArg)

password=password[0]

subprocess.call(["sh","-c","sudo mkdir /opt/popcorntime"])
subprocess.call(["sh","-c","sudo cp -r popcorntime.desktop /usr/share/applications/"])
subprocess.call(["sh","-c","cd ~/Downloads"])
subprocess.call(["sh","-c","echo "+password+" | sudo -S apt -y install libcanberra-gtk-module libgconf-2-4 unzip"])
subprocess.call(["sh","-c","wget 'https://get.popcorntime.app/build/Popcorn-Time-0.4.3-linux64.zip'"])
subprocess.call(["sh","-c","sudo unzip Popcorn-Time-0.4.3-linux64.zip -d /opt/popcorntime"])
subprocess.call(["sh","-c","sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time"])
subprocess.call(["sh","-c","sudo wget -O /opt/popcorntime/popcorn.png https://upload.wikimedia.org/wikipedia/commons/d/df/Pctlogo.png"])