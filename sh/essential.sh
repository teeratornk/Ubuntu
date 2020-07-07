echo "$1" | sudo -S apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "$1" | sudo -S add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
echo "$1" | sudo -S apt update
echo "$1" | sudo -S apt -y install build-essential sublime-text deborphan git cmake make snap python3-pip
echo "$1" | sudo -S apt -y install texlive-full

echo "$1" | wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" | sudo tee /etc/apt/sources.list.d/atom.list
echo "$1" | sudo apt update
echo "$1" | sudo apt install -y atom
echo "$1" | sudo apt install gparted
echo "$1" | sudo apt install texmaker
echo "$1" | sudo apt install ffmpeg
echo "$1" | sudo apt install nodejs
echo "$1" | sudo apt install npm
echo "$1" | sudo apt install golang
