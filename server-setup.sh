sudo apt update; sudo apt upgrade -y
sudo apt install -y \
ruby-dev \
golang \
python-pip \
python3-pip \
lua5.3

sudo snap install micro --classic
sudo snap install docker
sudo snap install amass
sudo snap install powershell-preview --classic

sudo apt install -y \
cewl \
asciinema \
curl \
wget \ 
jq \
lynx \
whois \
nmap \
tree \
ffmpeg \
exif \
dnsrecon \
wfuzz \
nikto \
wapiti \
recon-ng \
zsh

sudo gem install easywins
sudo gem install wikiranger
sudo gem install shodanz
sudo gem install ryo
sudo gem install gauntlt
sudo gem install bundler
sudo gem install aquatone

mkdir ~/Tools; cd ~/Tools

# Pagodo
git clone https://github.com/opsdisk/pagodo.git
cd pagodo
sudo -H pip install -r requirements.txt; cd ..

# Pymeta
git clone https://github.com/m8r0wn/pymeta.git
cd pymeta
sudo chmod +x setup.sh
sudo ./setup.sh; cd ..

# linkscrape
git clone https://github.com/NickSanzotta/linkScrape.git
cd linkScrape
sudo -H pip install requirements.txt
