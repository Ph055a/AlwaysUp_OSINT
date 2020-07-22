#!/bin/bash

echo "This installation will take some time to complete, you might want to grab yourself a coffee."


requirements(){
    echo "[*] Installing Requirements"
    sudo apt update
    sudo apt install --reinstall build-essential -y
    sudo apt install -y \
    nmap \
    dnsutils \
    golang \
    python3-dev \
    python3-pip \
    nethogs \
    httpie \
    gcc \
    make \
    libpcap-dev \
    snapd \
    phantomjs \
    npm \
    chromium-browser \
    parallel \
    wget \
    zsh \
    wfuzz \
    tree \
    git \
    curl \
    jq
    npm i -g wappalyzer wscat
}

directories(){
    echo "[*] Creating Directories"
    mkdir ~/Tools
    mkdir ~/Lists
    mkdir ~/BugBounty
}

snap(){
    sudo systemctl enable snapd
    sudo systemctl start snapd
    sudo snap install amass
    sudo snap install docker
    sudo snap install powershell --classic
    sudo snap install micro --classic
}

lists(){
    "[*] Installing Lists"
    cd ~/Lists
    echo "Pulling SecList"
    git clone https://github.com/danielmiessler/SecLists.git
    echo "Pulling fuzzdb" 
    git clone https://github.com/fuzzdb-project/fuzzdb.git
    echo "Pulling Payloads All The Things"
    git clone https://github.com/swisskyrepo/PayloadsAllTheThings
    echo "Pulling Common Speak 2"
    git clone https://github.com/cqsd/daily-commonspeak2.git
    wget https://public-dns.info/nameservers.txt -O nameservers.txt
    echo "Pulling SuperWordlist"
    git clone github.com/klionsec/SuperWordlist
    echo "Pulling API Wordlist"
    git clone github.com/chrislockard/api_wordlist
    echo "Pulling xajkep Wordlist"
    git clone github.com/xajkep/wordlists
    cd $HOME
}

gotools(){
    echo "[*] Installing Go Tools"
    echo
    
    echo "Installing Haktldextract"
    go get -u -v github.com/hakluke/haktldextract
    
    echo "Installing ras-fuzzer"
    go get -u -v github.com/hahwul/ras-fuzzer

    echo "[*] Installing aquatone"
    go get -u -v github.com/michenriksen/aquatone

    echo "[*] Install Shosubgo"
    go get -u -v github.com/incogbyte/shosubgo

    echo "[*] Installing GoSpider"
    go get -u -v github.com/jaeles-project/gospider

    echo "[*] Installing subjack"
    go get -u -v github.com/haccer/subjack

    echo "[*] Installing hakrawler"
    go get -u -v github.com/hakluke/hakrawler

    echo "[*] Installing Subfinder"
    go get -u -v github.com/projectdiscovery/subfinder/cmd/subfinder

    echo "[*] Installing httprobe"
    go get -u -v github.com/tomnomnom/httprobe

    echo "[*] Installing gocewl"
    go get -u -v github.com/shellhunter/gocewl

    echo "[*] Installing assetfinder"
    go get -u -v github.com/tomnomnom/assetfinder

    echo "[*] Installing tojson"
    go get -u -v github.com/tomnomnom/hacks/tojson

    echo "[*] Installing meg"
    go get -u -v github.com/tomnomnom/meg

    echo "[*] Installing unfurl"
    go get -u -v github.com/tomnomnom/unfurl

    echo "[*] Installing anew"
    go get -u -v github.com/tomnomnom/anew

    echo "[*] Installing qsreplace"
    go get -u -v github.com/tomnomnom/qsreplace

    echo "[*] Installing ffuf"
    go get -u -v github.com/ffuf/ffuf

    echo "[*] Installing Gobuster"
    go get -u -v github.com/OJ/gobuster

    echo "[*] Installing getJS"
    go get -u -v github.com/003random/getJS

    echo "[*] Installing getallURL"
    go get -u -v github.com/lc/gau

    echo "[*] Installing shuffledns"
    go get -u -v github.com/projectdiscovery/shuffledns/cmd/shuffledns

    echo "[*] Installing dalfox"
    go get -u -v github.com/hahwul/dalfox

    echo "[*] Installing dnsprobe"
    go get -u -v github.com/projectdiscovery/dnsprobe

    echo "[*] Installing nuclei"
    go get -u -v github.com/projectdiscovery/nuclei/cmd/nuclei

    echo "[*] cf-check"
    go get -u -v github.com/dwisiswant0/cf-check

    echo "[*] Installing dalfox"
    go get -u -v github.com/hahwul/dalfox

    echo "[*] Installing naabu"
    go get -u -v github.com/projectdiscovery/naabu/cmd/naabu

    echo "[*] Installing gowitness"
    go get -u -v github.com/sensepost/gowitness

    echo "[*] Installing chaos"
    go get -u -v github.com/projectdiscovery/chaos-client/cmd/chaos

    echo "[*] Installing httpx"
    go get -u -v github.com/projectdiscovery/httpx/cmd/httpx

    echo "[*] Installing Concurl"
    go get -u -v https://github.com/tomnomnom/concurl

    echo "[*] Install ShuffleDNS"
    go get -u -v github.com/projectdiscovery/shuffledns/cmd/shuffledns
}

python_tools(){
    echo "[*] Installing Python Tools"
    echo
    
    cd ~/Tools
    
    echo "[*] Installing Striker"
    git clone https://github.com/s0md3v/Striker
    cd Striker
    pip3 install -r requirements.txt; cd ..

    echo "[*] Installing XSStrike"
    git clone https://github.com/s0md3v/XSStrike
    cd XSStrike
    pip3 install -r requirements.txt; cd ..

    echo "[*] Installing Subscraper"
    git clone https://github.com/Cillian-Collins/subscraper
    cd subscraper
    pip3 install -r requirements.txt; cd ..

    echo "[*] Installing Arjun"
    git clone https://github.com/s0md3v/Arjun

    echo "[*] Installing Corsy"
    git clone https://github.com/s0md3v/Corsy
    cd Corsy
    pip3 install -r requirements.txt; cd ..

    echo "[*] Installing hardcodes"
    pip3 install hardcodes

    echo "[*] Installing shodan"
    pip3 install shodan

    echo "[*] Installing Bolt"
    git clone https://github.com/s0md3v/Bolt
    cd Bolt
    pip3 install -r requirements.txt; cd ..

    echo "[*] Installing Meta"
    git clone https://github.com/s0md3v/meta && cd meta && make install
    cd ~/Tools

    echo "[*] Installing Silver"
    git clone https://github.com/s0md3v/Silver
    cd Silver
    pip3 install -r requirements.txt; cd ..

    echo "[*] Installing masscan"
    git clone https://github.com/robertdavidgraham/masscan
    cd masscan && make -j
    cd ..

    echo "[*] Installing breacher"
    git clone https://github.com/s0md3v/Breacher

    echo "[*] Installing Sudomy"
    git clone --recursive https://github.com/screetsec/Sudomy

    echo "[*] Installing fast-recon"
    git clone https://github.com/DanMcInerney/fast-recon
    cd fast-recon
    pip3 install -r requirements.txt; cd ..

    echo "[*] Installing SubDomainizer"
    git clone https://github.com/nsonaniya2010/SubDomainizer
    cd SubDomainizer
    pip3 install -r requirements.txt; cd ..

    echo "[*] Installing Brutespray"
    git clone https://github.com/x90skysn3k/brutespray
    cd brutespray
    pip3 install -r requirements.txt; cd ..

    echo "[*] Installing Sublist3r"
    git clone https://github.com/aboul3la/Sublist3r
    cd Sublist3r
    pip3 install -r requirements.txt; cd ..
}

clean(){
    sudo apt autoremove -y
    sudo apt autoclean -y
}


# requirements
# directories
# snap
# gotools
python_tools
# clean
