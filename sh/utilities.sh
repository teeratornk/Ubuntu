cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "$1" | sudo -S dpkg -i google-chrome-stable_current_amd64.deb
#echo "$1" | sudo -S apt -y remove --purge firefox
echo "$1" | sudo -S apt -y install gimp pinta mpv
echo "$1" | sudo -S snap install wps-office spotify ao slack zoom-client
