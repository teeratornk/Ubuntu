git config --global credential.helper store
git config --global user.email "$1"
git config --global user.name "$2"
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'