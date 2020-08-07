A collection of golang tools for bug bounty reconnaissance. 

### Why?
- For quickly setting up a Bug Hunting server.

### Server Setup
#### Create sudo user
Create a new user
```bash
adduser <username>
```
Give sudo privileges
```bash
usermod -aG sudo <username>
```

---
### Enable Firewall
Allow SSH
```bash
ufw allow OpenSSH
```
Enable firewall
```bash
ufw enable
```
Check firewall status
```bash
ufw status
```

---
### Move SSH Keys
Run this command on the server while still logged in as root.
```bash
rsync --archive --chown=<username>:<username> ~/.ssh /home/<username>
```

Now exit the server and log back in as the created user.
```bash
ssh <username>@<IP-Address>
```
---

### Clone the repo
```bash
git clone https://github.com/Ph055a/AlwaysUp_OSINT.git; cd AlwaysUp_OSINT.git 
```

#### Install Tools
run install.sh
```bash
./install.sh
```

### Tools
- [x] docker
- [x] amass
- [x] nmap
- [x] wfuzz
- [x] nethogs
- [x] wget
- [x] httpie
- [x] jq
- [x] tree
- [x] powershell
- [x] micro
- [x] Haktldextract
- [x] ras-fuzzer
- [x] aquatone
- [x] Shosubgo
- [x] GoSpider
- [x] subjack
- [x] hakrawler
- [x] Subfinder
- [x] httprobe
- [x] gocewl
- [x] assetfinder
- [x] tojson
- [x] meg
- [x] unfurl
- [x] anew
- [x] qsreplace
- [x] ffuf
- [x] Gobuster
- [x] getJS
- [x] getallURL
- [x] shuffledns
- [x] dalfox
- [x] dnsprobe
- [x] nuclei
- [x] cf-check
- [x] naabu
- [x] gowitness
- [x] chaos
- [x] httpx
- [x] Concurl
- [x] ShuffleDNS
- [x] Striker
- [x] XSStriker
- [x] Subscraper
- [x] Arjun
- [x] Corsy
- [x] hardcodes
- [x] shodan
- [x] Bolt
- [x] Meta
- [x] Silver
- [x] Masscan
- [x] breacher
- [x] Sudomy
- [x] fast-recon
- [x] SubDomainizer
- [x] BruteSpray
- [x] Sublist3r
