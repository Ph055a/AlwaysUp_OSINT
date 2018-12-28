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
sudo -H pip install -r requirements.txt; cd ..

# Domain_analyzer
git clone https://github.com/eldraco/domain_analyzer.git

# Skiptracer
cd ~/Tools
git clone https://github.com/xillwillx/skiptracer.git
cd skiptracer
sudo -H pip install -r requirement.txt; cd ..

# SSRFmap
git clone https://github.com/dreadlocked/SSRFmap.git
cd SSRFmap
bundle install

# datasploit
git clone https://github.com/DataSploit/datasploit.git
cd datasploit
sudo -H pip install -r requirements.txt