# install common tools
sudo apt update && sudo apt upgrade
sudo apt install chromium-browser
sudo apt install vim
sudo apt install git
sudo apt install git-doc
sudo apt install synapse
sudo apt install shutter
sudo apt install di
sudo apt install tree
sudo apt install glipper
sudo apt install libsodium-dev
sudo apt-get install ibus-sunpinyin sunpinyin-data

# install mongodb server
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start

# install tools from packages

# setup shadowsocksr

# setup .bashrc

# setup shared directory



