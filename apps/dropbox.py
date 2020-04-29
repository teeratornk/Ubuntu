import os,subprocess, sys

password=[]
for eachArg in sys.argv:
	password.append(eachArg)

password=password[0]

os.chdir("~/Downloads")

subprocess.call(["sh","-c","wget -c https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb -O dropbox.deb"])

subprocess.call(["sh","-c","echo "+password+" | sudo dpkg -i dropbox.deb"])