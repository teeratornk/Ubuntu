echo "password" | sudo -S apt -y install libcanberra-gtk-module libgconf-2-4
wget 'https://get.popcorntime.app/build/Popcorn-Time-0.4.3-linux64.zip'
sudo mkdir /opt/popcorntime
cd ~/Downloads
sudo apt-get install unzip
sudo unzip Popcorn-Time-0.4.3-linux64.zip -d /opt/popcorntime
sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time
sudo cp -r popcorntime.desktop /usr/share/applications/
sudo wget -O /opt/popcorntime/popcorn.png https://upload.wikimedia.org/wikipedia/commons/d/df/Pctlogo.png