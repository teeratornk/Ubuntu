echo "$1" | sudo -S apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "$1" | sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
echo "$1" | sudo apt update
echo "$1" | sudo apt -y install build-essential sublime-text deborphan git cmake make snap python3-pip
echo "$1" | sudo -S apt -y install texlive-full
