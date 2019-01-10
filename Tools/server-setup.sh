mkdir ~/.go
sudo apt update; sudo apt upgrade -y

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
httptrack \
nmap \
jq \
dnswalk \
dnstracer \
dmitry 

sudo gem update --system
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip

s="sudo snap install"
$s micro --classic
$s docker
$s amass
$s powershell-preview --classic
$s yacy-search --edge
$s certstream

g="sudo gem install"
$g easywins
$g wikiranger
$g shodanz
$g ryo
$g gauntlt
$g watir
$g bundler
$g aquatone

mkdir ~/keys
mkdir ~/Tools
t="cd ~/Tools"

# shodan & censys
sudo -H pip install shodan
sudo -H pip install censys

# Raccoon
sudo -H pip3 install raccoon-scanner

# Namechk
$t; git clone https://github.com/HA71/Namechk.git
 
# Twint
sudo -H pip3 install twint

# Zen
$t; git clone https://github.com/s0md3v/Zen.git

# Username Anarchy
$t; git clone https://github.com/urbanadventurer/username-anarchy.git

# Spiderfoot
$t
wget --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0' 'https://www.spiderfoot.net/files/spiderfoot-2.12.0-src.tar.gz'
tar -xvzf spiderfoot-2.12.0-src.tar.gz
sudo rm -rf spiderfoot-2.12.0-src.tar.gz

# Zaproxy
$t; wget https://github.com/zaproxy/zaproxy/releases/download/2.7.0/ZAP_2_7_0_unix.sh
sudo rm -rf ZAP_2_7_0_unix.sh

# Photon
$t; git clone https://github.com/s0md3v/Photon.git; cd Photon
sudo -H pip3 install -r requirements.txt

# Pagodo
$t; git clone https://github.com/opsdisk/pagodo.git
cd pagodo
sudo -H pip install -r requirements.txt; 

# Pymeta
$t; git clone https://github.com/m8r0wn/pymeta.git; cd pymeta
sudo chmod +x setup.sh
sudo ./setup.sh; 

# linkscrape
$t; git clone https://github.com/NickSanzotta/linkScrape.git; cd linkScrape
sudo -H pip install -r requirements.txt; 

# Domain_analyzer
$t; git clone https://github.com/eldraco/domain_analyzer.git

# Skiptracer
$t; git clone https://github.com/xillwillx/skiptracer.git; cd skiptracer
sudo -H pip install -r requirements.txt; 

# SSRFmap
$t; git clone https://github.com/dreadlocked/SSRFmap.git;cd SSRFmap
bundle install

# datasploit
$t; git clone https://github.com/DataSploit/datasploit.git; cd datasploit
sudo -H pip install -r requirements.txt

# gasmask
$t; git clone https://github.com/twelvesec/gasmask.git; cd gasmask
sudo -H pip install -r requirements.txt

# infoga
$t; git clone https://github.com/m4ll0k/Infoga.git infoga; cd infoga
python setup.py install; 

# gitrob
go get github.com/michenriksen/gitrob

# Xray
go get github.com/evilsocket/xray
cd $GOPATH/src/github.com/evilsocket/xray
make; cd build; mv xray /usr/bin

# phishing catcher
$t; git clone https://github.com/x0rz/phishing_catcher.git; cd phishing_catcher
sudo -H pip install -r requirements.txt

# Striker
$t; git clone https://github.com/UltimateHackers/Striker; cd Striker
sudo -H pip install -r requirements.txt