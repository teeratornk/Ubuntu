cd sh
echo "$1" | sudo -S mkdir /opt/popcorntime/
echo "$1" | sudo -S cp -r popcorntime.desktop /usr/share/applications/
cd ~/Downloads
echo "$1" | sudo -S apt -y install libcanberra-gtk-module libgconf-2-4 unzip
wget 'https://dl.getpopcorntime.is/Popcorn-Time-linux64.tar.xz'
echo "$1" | sudo -S tar -C /opt/popcorntime/ -xf Popcorn-Time-linux64.tar.xz
echo "$1" | sudo -S ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time
echo "$1" | sudo -S wget -O /opt/popcorntime/popcorn.png https://upload.wikimedia.org/wikipedia/commons/d/df/Pctlogo.png
