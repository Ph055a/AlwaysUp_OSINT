mkdir ~/.go
sudo apt update; sudo apt upgrade -y

sudo gem update --system
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip

sudo apt install -y \
golang \
ruby-dev \
asciinema \
python-pip \
python3-pip \
exif \
wuzz \
httpie \
wget \
curl \
cewl \
whois \
nikto \
skipfish
lynx \
httptrack \
nmap \
jq \
dnswalk \
dnstracer \
zsh \
dmitry 


sudo snap install micro --classic
sudo snap install docker
sudo snap install amass
sudo snap install powershell-preview --classic
sudo snap install yacy-search
sudo snap install certstream

sudo gem install easywins
sudo gem install wikiranger
sudo gem install shodanz
sudo gem install ryo
sudo gem install gauntlt
sudo gem install watir
sudo gem install bundler
sudo gem install aquatone

mkdir ~/keys
mkdir ~/Tools

# shodan & censys
sudo -H pip install shodan
sudo -H pip install censys

# Raccoon
sudo -H pip3 install raccoon-scanner

# Zen
cd ~/Tools
git clone https://github.com/s0md3v/Zen.git

# Username Anarchy
cd ~/Tools
git clone https://github.com/urbanadventurer/username-anarchy.git

# Spiderfoot
cd ~/Tools
wget --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0' 'https://www.spiderfoot.net/files/spiderfoot-2.12.0-src.tar.gz'
tar -xvzf spiderfoot-2.12.0-src.tar.gz
sudo rm -rf spiderfoot-2.12.0-src.tar.gz

# Zaproxy
cd ~/Tools
wget https://github.com/zaproxy/zaproxy/releases/download/2.7.0/ZAP_2_7_0_unix.sh
sudo rm -rf ZAP_2_7_0_unix.sh

# Photon
cd ~/Tools
git clone https://github.com/s0md3v/Photon.git; cd Photon
sudo -H pip3 install -r requirements.txt

# Pagodo
cd ~/Tools
git clone https://github.com/opsdisk/pagodo.git
cd pagodo
sudo -H pip install -r requirements.txt; 

# Pymeta
cd ~/Tools
git clone https://github.com/m8r0wn/pymeta.git; cd pymeta
sudo chmod +x setup.sh
sudo ./setup.sh; 

# linkscrape
cd ~/Tools
git clone https://github.com/NickSanzotta/linkScrape.git; cd linkScrape
sudo -H pip install -r requirements.txt; 

# Domain_analyzer
cd ~/Tools
git clone https://github.com/eldraco/domain_analyzer.git

# Skiptracer
cd ~/Tools
git clone https://github.com/xillwillx/skiptracer.git; cd skiptracer
sudo -H pip3 install -r requirement.txt; 

# SSRFmap
cd ~/Tools
git clone https://github.com/dreadlocked/SSRFmap.git;cd SSRFmap
bundle install

# datasploit
cd ~/Tools
git clone https://github.com/DataSploit/datasploit.git; cd datasploit
sudo -H pip install -r requirements.txt

# gasmask
cd ~/Tools
git clone https://github.com/twelvesec/gasmask.git; cd gasmask
sudo -H pip install -r requirements.txt

# infoga
cd ~/Tools
git clone https://github.com/m4ll0k/Infoga.git infoga; cd infoga
python setup.py install; 

# gitrob
go get github.com/michenriksen/gitrob

# Xray
go get github.com/evilsocket/xray
cd $GOPATH/src/github.com/evilsocket/xray
make; cd build; mv xray /usr/bin

# phishing catcher
cd ~/Tools
git clone https://github.com/x0rz/phishing_catcher.git; cd phishing_catcher
sudo -H pip install -r requirements.txt

# Striker
cd ~/Tools
git clone https://github.com/UltimateHackers/Striker; cd Striker
sudo -H pip install -r requirements.txt