cd sh
echo "$1" | sudo mkdir /opt/popcorntime
echo "$1" | sudo cp -r popcorntime.desktop /usr/share/applications/
cd ~/Downloads
echo "$1" | sudo -S apt -y install libcanberra-gtk-module libgconf-2-4 unzip
wget 'https://get.popcorntime.app/build/Popcorn-Time-0.4.3-linux64.zip'
echo "$1" | sudo unzip Popcorn-Time-0.4.3-linux64.zip -d /opt/popcorntime
echo "$1" | sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time
echo "$1" | sudo wget -O /opt/popcorntime/popcorn.png https://upload.wikimedia.org/wikipedia/commons/d/df/Pctlogo.png
