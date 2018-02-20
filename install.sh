sudo apt -qq install git
echo "✔ git installed"

sudo apt -qq install nodejs
sudo apt -qq install npm
sudo apt -qq install python-pip
echo "✔ apt dev tools installed"

sudo npm install -g create-react-app nodemon live-server
echo "✔ npm -g dev tools installed"

echo "open() {" >> ~/.bashrc
echo "last=\${1: -1}" >> ~/.bashrc
echo "if [ \$last = / ]" >> ~/.bashrc
echo "then" >> ~/.bashrc
echo "file=\${1::-1}" >> ~/.bashrc
echo "else" >> ~/.bashrc
echo "file=\$1" >> ~/.bashrc
echo "fi" >> ~/.bashrc
echo "cmd.exe /C start \"\${file}\"" >> ~/.bashrc
echo "}" >> ~/.bashrc
echo "✔ open command configured"

echo "✔ setup complete. enjoy your shiny new bash terminal"
