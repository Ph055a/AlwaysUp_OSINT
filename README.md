Always up OSINT server configuration, works well on a $5 per month digital ocean server. This also allows for firing off OSINT scripts using a mobile device via SSH.

### Setup

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
### Firewall
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
```bash
rsync --archive --chown=<username>:<username> ~/.ssh /home/<username>
```

#### Install Tools
run install.sh
```bash
./install.sh
```
#### Restart Server
A restart is needed to complete docker install. Then run the docker script to pull docker images.
```bash
cd Docker; ./pull_images.sh
```
### Docker Images
- [x] Kali Linux
- [x] ParrotSec
- [x] Metasploit  

### OSINT Tools
- [x] Spiderfoot
- [x] amass
- [x] twint
- [x] exif
- [x] wuzz
- [x] asciinema
- [x] wget / curl
- [x] httpie
- [x] whois
- [x] cewl
- [x] nikto
- [x] skipfish
- [x] lynx
- [x] nmap
- [x] jq
- [x] shodan
- [x] censys
- [x] httptrack
- [x] dnswalk
- [x] dnstracer
- [x] dmitry
- [x] Yacy Search
- [x] Certstream
- [x] Easywins
- [x] Wikiranger
- [x] Aquatone
- [x] Ryo
- [x] Zen
- [x] Username Anarchy
- [x] Raccoon
- [x] Zaproxy
- [x] Photon
- [x] Pagodo
- [x] Pymeta
- [x] Linkscrape
- [x] Domain_Analyzer
- [x] Skiptracer
- [x] Datasploit
- [x] Gasmask
- [x] SSRFmap
- [x] Phishing Catcher
- [x] infoga
- [ ] Gitrob
- [ ] xray
- [x] Striker
- [ ] Namechk

### Additional
- [x] Powershell
- [x] Docker
- [x] Golang
- [x] Python
- [x] Ruby

### To Do
- [] Complete testing
- [] Configure zshrc to run
