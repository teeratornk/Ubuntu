import os,subprocess, sys

paraviewVersion=[]
for eachArg in sys.argv:
	paraviewVersion.append(eachArg)

version=paraviewVersion[0]
versionName=paraviewVersion[1]

os.chdir("~/Downloads")

subprocess.call(["sh","-c","wget -c 'https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v"+version+"&type=binary&os=Linux&downloadFile=ParaView-"+versionName+".tar.gz'"])

subprocess.call(["sh","-c","mv 'download.php?submit=Download&version=v"+version+"&type=binary&os=Linux&downloadFile=ParaView-"+versionName+".tar.gz' ParaView-"+versionName+".tar.gz"])

subprocess.call(["sh","-c","tar xzvf ParaView-"+versionName+".tar.gz"])

os.chdir("ParaView-"+versionName)

subprocess.call(["sh","-c","sudo mkdir /opt/paraview/"])

subprocess.call(["sh","-c","sudo cp -r * /opt/paraview/"])

subprocess.call(["sh","-c","echo 'export PATH=$PATH:/opt/"+versionName+"/bin/' >> ~/.bashrc"])

subprocess.call(["sh","-c","sudo ln -s -f /opt/paraview/bin/paraview /usr/bin/paraview"])

subprocess.call(["sh","-c","sudo ln -s -f /opt/paraview/lib/paraview"+version+"/ /usr/lib/paraview-"+version])

file_object=open('paraview.desktop','a')
file_object.close()
file_object=open('paraview.desktop','r+')

file_object.write(
	"[Desktop Entry]\n"
	"Version=1.0\n"
	"Name=ParaView "+version+"\n"
	"\n"
	"Exec=paraview\n"
	"Terminal=false\n"
	"Icon=/opt/paraview/share/icons/hicolor/96x96/apps/paraview.png\n"
	"Type=Application\n"
	"x-Ayatana-Desktop-Shortcuts=NewWindow\n"
	"\n"
	"[NewWindow Shortcut Group]\n"
	"Name=New Window\n"
	"Exec=paraview\n"
	"TargetEnvironment=Unity\n")

file_object.close()

subprocess.call(["sh","-c","sudo mv paraview.desktop /usr/share/applications"])
