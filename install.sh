#!/bin/bash

# check for sudo
sudo_check(){
    if [ "$EUID" -ne 0 ];then 
        echo "[*] This script needs to be run as root"
        exit
    fi
}

requirements(){
    cd $HOME
    echo "[*] Installing Requirements"
    sudo apt update
    sudo apt install --reinstall build-essential -y
    sudo apt install -y \
    nmap \
    dnsutils \
    python3-dev \
    python3-pip \
    nethogs \
    httpie \
    gcc \
    make \
    libpcap-dev \
    snapd \
    phantomjs \
    chromium-browser \
    parallel \
    wget \
    zsh \
    wfuzz \
    tree \
    git \
    curl \
    peco \
    fzf \
    jq

    wget https://github.com/knqyf263/pet/releases/download/v0.3.0/pet_0.3.0_linux_amd64.deb
    sudo dpkg -i pet_0.3.0_linux_amd64.deb
    sudo apt install -f
    sudo apt remove pet_0.3.0_linux_amd64.deb
    
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
    sudo snap install go --classic
    sudo snap install amass
    sudo snap install docker
    sudo snap install powershell --classic
    sudo snap install micro --classic
}

lists(){
    "[*] Installing Lists"
    cd ~/Lists
    echo "Pulling SecList"
    git clone https://github.com/danielmiessler/SecLists
    echo "Pulling fuzzdb" 
    git clone https://github.com/fuzzdb-project/fuzzdb
    echo "Pulling Payloads All The Things"
    git clone https://github.com/swisskyrepo/PayloadsAllTheThings
    echo "Pulling Common Speak 2"
    git clone https://github.com/assetnote/commonspeak2-wordlists
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

    echo "[*] Installing SSRF Sheriff"
    go get -u github.com/teknogeek/ssrf-sheriff
    cd $GOPATH/src/github.com/teknogeek/ssrf-sheriff
    cp config/base.example.yaml config/base.yaml
    cd $HOME

    echo "[*] Installing wordlistgen"
    go get -u github.com/ameenmaali/wordlistgen

    echo "[*] Installing qsinject"
    go get -u github.com/ameenmaali/qsinject

    echo "[*] Installing qsfuzz"
    go get -u github.com/ameenmaali/qsfuzz

    echo "[*] Installing Aron"
    go get -u github.com/m4ll0k/Aron

    echo "[*] Installing Gopherus"
    go get -u github.com/tarunkant/Gopherus

    echo "[*] Installing jwt-hack"
    go get -u github.com/hahwul/jwt-hack
    
    echo "[*] Installing s3reverse"
    go get -u github.com/hahwul/s3reverse

    echo "[*] Installing gron"
    go get -u github.com/tomnomnom/gron

    echo "[*] Installing DNSObserver"
    go get -u github.com/allyomalley/dnsobserver

    echo "[*] Installing GitLeaks"
    go get -u github.com/zricethezav/gitleaks

    echo "[*] Installing Gitrob"
    go get -u github.com/michenriksen/gitrob

    echo "[*] Installing Hakrevdns"
    go get -u github.com/hakluke/hakrevdns
    
    echo "[*] Installing CorsMe"
    go get -u github.com/Shivangx01b/CorsMe

	echo "[*] Installing urlgrab"
	go get -u github.com/iamstoxe/urlgrab
	
	echo "[*] Installing Jaeles"
	go get -u github.com/jaeles-project/jaeles
    
    echo "[*] Installing Haktldextract"
    go get -u github.com/hakluke/haktldextract
    
    echo "[*] Installing ras-fuzzer"
    go get -u github.com/hahwul/ras-fuzzer

    echo "[*] Installing aquatone"
    go get -u github.com/michenriksen/aquatone

    echo "[*] Install Shosubgo"
    go get -u github.com/incogbyte/shosubgo

    echo "[*] Installing GoSpider"
    go get -u github.com/jaeles-project/gospider

    echo "[*] Installing subjack"
    go get -u github.com/haccer/subjack

    echo "[*] Installing hakrawler"
    go get -u github.com/hakluke/hakrawler

    echo "[*] Installing Subfinder"
    go get -u github.com/projectdiscovery/subfinder/cmd/subfinder

    echo "[*] Installing httprobe"
    go get -u github.com/tomnomnom/httprobe

    echo "[*] Installing gocewl"
    go get -u github.com/shellhunter/gocewl

    echo "[*] Installing assetfinder"
    go get -u github.com/tomnomnom/assetfinder

    echo "[*] Installing tojson"
    go get -u github.com/tomnomnom/hacks/tojson

    echo "[*] Installing meg"
    go get -u github.com/tomnomnom/meg

    echo "[*] Installing unfurl"
    go get -u github.com/tomnomnom/unfurl

    echo "[*] Installing anew"
    go get -u github.com/tomnomnom/anew

    echo "[*] Installing qsreplace"
    go get -u github.com/tomnomnom/qsreplace

    echo "[*] Installing ffuf"
    go get -u github.com/ffuf/ffuf

    echo "[*] Installing Gobuster"
    go get -u github.com/OJ/gobuster

    echo "[*] Installing getJS"
    go get -u github.com/003random/getJS

    echo "[*] Installing getallURL"
    go get -u github.com/lc/gau

    echo "[*] Installing shuffledns"
    go get -u github.com/projectdiscovery/shuffledns/cmd/shuffledns

    echo "[*] Installing dalfox"
    go get -u github.com/hahwul/dalfox

    echo "[*] Installing dnsprobe"
    go get -u github.com/projectdiscovery/dnsprobe

    echo "[*] Installing nuclei"
    go get -u github.com/projectdiscovery/nuclei/cmd/nuclei

    echo "[*] cf-check"
    go get -u github.com/dwisiswant0/cf-check

    echo "[*] Installing naabu"
    go get -u github.com/projectdiscovery/naabu/cmd/naabu

    echo "[*] Installing gowitness"
    go get -u github.com/sensepost/gowitness

    echo "[*] Installing chaos"
    go get -u github.com/projectdiscovery/chaos-client/cmd/chaos

    echo "[*] Installing httpx"
    go get -u github.com/projectdiscovery/httpx/cmd/httpx

    echo "[*] Installing Concurl"
    go get -u github.com/tomnomnom/concurl

    echo "[*] Installing ShuffleDNS"
    go get -u github.com/projectdiscovery/shuffledns/cmd/shuffledns

    echo "[*] Installing Subdomain"
    go get -u github.com/dexthlover/subdomains

    echo "[*] Installing comb"
    go get -u github.com/tomnomnom/comb

    echo "[*] Installing burl"
    go get -u github.com/tomnomnom/burl

    echo "[*] Installing html-tool"
    go get -u github.com/tomnomnom/hacks/html-tool

    echo "[*] Installing gf"
    go get -u github.com/tomnomnom/gf

    echo "[*] Installing websocket-connection-smuggler"
    go get -u github.com/c-bata/go-prompt
}

masscan(){
    echo "[*] Installing masscan"
    git clone https://github.com/robertdavidgraham/masscan
    cd masscan && make -j
    cd ..
}

clean(){
    sudo apt autoremove -y
    sudo apt autoclean -y
    cd $GOPATH/bin
    sudo mv * /usr/bin
}

sudo_check
requirements
directories
lists
snap
gotools
masscan
clean