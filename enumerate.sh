#!/bin/bash

echo "[*] Enter domain to start brute forcing"
echo "[*] Example: hackerone.com"
echo
read TARGET

SUBDOMAIN=">> $HOME/BugBounty/$TARGET/subdomains.txt"
URLS=">> $HOME/BugBounty/$TARGET/urls.txt"

if [ -f $HOME/BugBounty/$TARGET  ]; then
    echo "$TARGET directory already exists" 
else
    echo "Creating $TARGET directory"
    mkdir -p $HOME/BugBounty/$TARGET
fi

assetfinder(){
    assetfinder --subs-only $TARGET $SUBDOMAIN
}

subfinder(){
    subfinder -d $TARGET $SUBDOMAIN
}

amass(){
    amass enum -brute -d $TARGET $SUBDOMAIN
}

sublist3r(){
    cd ~/Tools/sublist3r
    python3 sublist3r.py -b -d $TARGET $SUBDOMAIN; cd ..
}

gospider(){
    gospider -s https://$TARGET -w -a -k 10 -t 10 -r --sitemap --robots --other-source -u web >> $HOME/BugBounty/$TARGET/urls.txt
    gospider -s $TARGET --other-source --include-subs -u web $URLS
}

gua(){
    gau -subs $TARGET $URLS
}

sleep 2
# assetfinder
sleep 3
# subfinder
sleep 3
amass
sleep 3
sublist3r
sleep 3
gospider
sleep 3
gua
echo "[*] Enumeration Completed"