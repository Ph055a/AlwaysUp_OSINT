Always up OSINT server configuration.

### Why?
- I can SSH using a mobile device!!!
    Not only can I run OSINT scripts on the go but with ParrotSec and Kali installed it can turn my mobile phone into a recon tool with teeth.

- Sharing is caring
    If you have a team this can be one way of sharing those expensive API keys.

### Digital Ocean Setup

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
- [x] nmap
- [x] jq
- [x] shodan
- [x] censys
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
- [x] Namechk

### Additional
- [x] Powershell
- [x] Golang
- [x] Python
- [x] Ruby
