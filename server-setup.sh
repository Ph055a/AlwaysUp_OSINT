mkdir ~/.go
sudo apt update; sudo apt upgrade -y
sudo apt install -y \
golang \
ruby-dev \
asciinema \
python-pip \
python3-pip \
exif \
wget \
curl \
cewl \
whois \
recon-ng \
nikto \
build-essentials \
skipfish
lynx \
httptrack \
nmap \
jq \
dnswalk \
dnstracer \
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
mkdir ~/Tools; cd ~/Tools

sudo gem update --system
sudo pip install --upgrade pip

# shodan & censys
sudo -H pip install shodan
sudo -H pip install censys

# Raccoon
sudo -H pip3 install raccoon-scanner

# Zen
git clone https://github.com/s0md3v/Zen.git

# Username Anarchy
git clone https://github.com/urbanadventurer/username-anarchy.git

# Spiderfoot
wget --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0' 'https://www.spiderfoot.net/files/spiderfoot-2.12.0-src.tar.gz'

# Photon
git clone https://github.com/s0md3v/Photon.git; cd Photon
sudo -H pip3 install -r requirements.txt

# Pagodo
git clone https://github.com/opsdisk/pagodo.git
cd pagodo
sudo -H pip install -r requirements.txt; 
cd ..

# Pymeta
git clone https://github.com/m8r0wn/pymeta.git; cd pymeta
sudo chmod +x setup.sh
sudo ./setup.sh; 
cd ..

# linkscrape
git clone https://github.com/NickSanzotta/linkScrape.git; cd linkScrape
sudo -H pip install -r requirements.txt; 
cd ..

# Domain_analyzer
git clone https://github.com/eldraco/domain_analyzer.git

# Skiptracer
git clone https://github.com/xillwillx/skiptracer.git; cd skiptracer
sudo -H pip install -r requirement.txt; 
cd ..

# SSRFmap
git clone https://github.com/dreadlocked/SSRFmap.git;cd SSRFmap
bundle install
cd ..

# datasploit
git clone https://github.com/DataSploit/datasploit.git; cd datasploit
sudo -H pip install -r requirements.txt
cd ..

# gasmask
git clone https://github.com/twelvesec/gasmask.git; cd gasmask
sudo -H pip install -r requirements.txt
cd ..

# infoga
git clone https://github.com/m4ll0k/Infoga.git infoga; cd infoga
python setup.py install; 
cd ..

# gitrob
go get github.com/michenriksen/gitrob

# Xray
go get github.com/evilsocket/xray
cd $GOPATH/src/github.com/evilsocket/xray
make; cd build; mv xray /usr/bin

# urlcrazy


# phishing catcher
git clone https://github.com/x0rz/phishing_catcher.git; cd phishing_catcher
sudo -H pip install -r requirements.txt
