echo "apt update..."
sudo apt -qq update
echo "✔ linux update done!"

sudo apt -qq install git
echo "✔ git installed"

git pull
echo "✔ setup repo is up to date"

sudo apt -qq install nodejs
sudo apt -qq install npm
sudo apt -qq install python-pip
echo "✔ apt dev tools installed"

sudo npm install -g create-react-app nodemon live-server
echo "✔ npm -g dev tools installed"

