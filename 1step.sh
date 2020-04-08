echo "password" | sudo -S apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "password" | sudo -S dpkg -i google-chrome-stable_current_amd64.deb
sudo apt update
sudo apt -y install build-essential sublime-text deborphan git cmake make snap
sudo apt -y remove --purge firefox firefox-local-en
sudo apt autoremove --purge
sudo apt autoclean