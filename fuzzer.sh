#!/bin/bash

echo "[*] Enter domain to start brute forcing"
echo "[*] Example: hackerone.com"
read TARGET

if [ -f $HOME/BugBounty/$TARGET  ]; then
    echo "$TARGET directory already exists" 
else
    echo "Creating $TARGET directory"
    mkdir -p $HOME/BugBounty/$TARGET
fi

SECLIST_BASE="~/Lists/SecLists/Discovery"
~/Lists/fuzzdb/discovery="~/Lists/fuzzdb/discovery"

pause(){
    echo "Completed, Going to sleep for a 15 minutes"
    sleep 15m
}

seclist(){
    echo "Brute forcing domains"
    gobuster dns -d $TARGET -w ~/Lists/SecLists/Discovery/Web-Content/directory-list-lowercase-2.3-big.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause

    gobuster dns -d $TARGET -w ~/Lists/SecLists/Discovery/Web-Content/raft-large-directories.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause

    gobuster dns -d $TARGET -w ~/Lists/SecLists/Discovery/Web-Content/common.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause

    gobuster dns -d $TARGET -w ~/Lists/SecLists/Discovery/DNS/subdomains-top1million-110000.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause

    gobuster dns -d $TARGET -w ~/Lists/SecLists/Discovery/DNS/namelist.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause

    gobuster dns -d $TARGET -w ~/Lists/SecLists/Discovery/Miscellaneous/us-cities.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause

    gobuster dns -d $TARGET -w ~/Lists/SecLists/Discovery/Miscellaneous/ike-groupid.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause
}

fuzzdb(){
    gobuster dns -d $TARGET -w ~/Lists/fuzzdb/discovery/dns/gTLD.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause

    gobuster dns -d $TARGET -w ~/Lists/fuzzdb/discovery/dns/dnsmapCommonSubdomains.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause

    gobuster dns -d $TARGET -w ~/Lists/fuzzdb/discovery/dns/dnsmapCommonSubdomains.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause

    gobuster dns -d $TARGET -w ~/Lists/fuzzdb/discovery/dns/alexaTop1mAXFRcommonSubdomains.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause 

    gobuster dns -d $TARGET -w ~/Lists/fuzzdb/discovery/Miscellaneous/common-methods.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause

    gobuster dns -d $TARGET -w ~/List/fuzzdb/wordlist-misc/wordlist-alphanumeric-case.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause

    gobuster dns -d $TARGET -w ~/List/fuzzdb/wordlist-user-passwd/names/namelist.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause 

    gobuster dns -d $TARGET -w ~/List/fuzzdb/wordlist-user-passwd/unix-os/unix_users.txt >> $HOME/BugBounty/$TARGET/subdomains.txt
    pause
}

seclist
fuzzdb