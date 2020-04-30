echo "$1" | sudo rm -rf $HOME/.config/sublime-text-3/Packages/User
echo "$1" | sudo mkdir $HOME/.config/sublime-text-3/Packages/User
echo "$1" | sudo cp -r subl3/* $HOME/.config/sublime-text-3/Packages/User/
