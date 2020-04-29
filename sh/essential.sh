echo "$1" | sudo -S apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt -y install build-essential sublime-text deborphan git cmake make snap pip3
echo "$1" | sudo -S apt -y install texlive-full