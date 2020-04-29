wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "$1" | sudo -S dpkg -i google-chrome-stable_current_amd64.deb
sudo apt update
sudo apt -y remove --purge firefox firefox-local-en
sudo apt autoremove --purge
sudo apt autoclean
echo "$1" | sudo -S apt -y install gimp pinta mpv
echo "$1" | sudo -S snap install wps-office spotify ao