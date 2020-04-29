wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "password" | sudo -S dpkg -i google-chrome-stable_current_amd64.deb
sudo apt update
sudo apt -y remove --purge firefox firefox-local-en
sudo apt autoremove --purge
sudo apt autoclean
echo "password" | sudo -S apt -y install gimp pinta mpv
echo "password" | sudo -S snap install wps-office spotify ao