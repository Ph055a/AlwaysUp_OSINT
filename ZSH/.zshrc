# 		ZSH Configuration
# ------------------------------------
export ZSH=$HOME/.oh-my-zsh
TERM=xterm-256color
ZSH_THEME="agnoster"
CASE_SENSITIVE="false"
plugins=(jsontools docker httpie)
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
# ------------------------------------

# 		Quick Configs
# ------------------------------------
alias i3="sudo micro ~/.config/i3/config"
alias zsh="sudo micro .zshrc"
# ------------------------------------

# 		Vulnerable Web Applications
# ------------------------------------
alias Juice="docker run --rm -p 3000:3000 bkimminich/juice-shop && firefox-esr https://localhost:3000"
alias Bwapp="docker run -d -p 80:80 raesene/bwapp"
# ------------------------------------

# 		Tar
# ------------------------------------
alias tar_d="tar -xvf "
alias tar_c="tar -cvf "
# ------------------------------------

# 		Misc
# ------------------------------------
export SSH_KEY_PATH="~/.ssh/rsa_id"
alias Zshreload="source .zshrc" 		# Reload alias
alias Xreload="xrdb ~/.Xresources"		# Reload Xresources
alias Mi="micro "
VISUAL=micro; export VISUAL EDITOR=micro; export EDITOR
# ------------------------------------

# 		Package Management
# ------------------------------------
alias Up="sudo apt update"
alias Full="sudo apt update; sudo apt upgrade -y"
alias Install="sudo apt install "
alias Remove="sudo apt remove "
# ------------------------------------

# 		Remove
# ------------------------------------
alias rmi="sudo rm -rfi"		# Remove with confirmation
# ------------------------------------

# 		Shutdown
# ------------------------------------
alias shutdown="sudo shutdown -h now"
# ------------------------------------

# 	    Certs
# ------------------------------------
certspotter(){ 
curl -s https://certspotter.com/api/v0/certs\?domain\=$1 | jq '.[].dns_names[]' | sed 's/\"//g' | sed 's/\*\.//g' | sort -u | grep $1
}
crtsh(){
curl -s https://crt.sh/?Identity=%.$1 | grep ">*.$1" | sed 's/<[/]*[TB][DR]>/\n/g' | grep -vE "<|^[\*]*[\.]*$1" | sort -u | awk 'NF'
}
ipinfo(){
curl -s http://ipinfo.io/$1
}
# ------------------------------------

# 		Clamav
# ------------------------------------
alias Fresh="sudo freshclam"
alias ScanAV="sudo clamscan -r ."
# ------------------------------------

# 		Privacy
# ------------------------------------
alias Mac="sudo ifconfig wlp2s0 down && sudo macchanger -r wlp2s0 && sudo ifconfig wlp2s0 up"
alias Remoteip="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"
# ------------------------------------

# 		Sound
# ------------------------------------
alias 00="amixer set Master 00%"
alias 10="amixer set Master 10%"
alias 20="amixer set Master 20%"
alias 30="amixer set Master 30%"
alias 40="amixer set Master 40%"
alias 50="amixer set Master 50%"
alias 60="amixer set Master 60%"
alias 70="amixer set Master 70%"
alias 80="amixer set Master 80%"
alias 90="amixer set Master 90%"
alias 100="amixer set Master 100%"
# ------------------------------------

# 		Docker
# ------------------------------------
alias Dock_stats="docker stats"
alias Dock_images="docker images"
alias Dock_run_interactive="docker container run -it "
alias Dock_run_detatch="docker container run -d "
alias Dock_remove_all="docker stop $(docker ps -a -q)"
alias Dock_get="docker pull golang && docker pull python && docker pull ubuntu && docker pull django"
# -----------------------------------

# 		Go
# ------------------------------------
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:$HOME/.local/bin:$HOME/.bin
# ------------------------------------

# 		Networking
# ------------------------------------
alias Net_restart="sudo systemctl restart NetworkManager.service"
alias Net_stop="sudo systemctl stop NetworkManager.service"
# ------------------------------------

# 		Conda Init
# ------------------------------------
__conda_setup="$('/home/ph055a/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ph055a/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ph055a/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ph055a/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# ------------------------------------

targeting(){
	echo "[*] Enter domain to target"
	echo "[*] Example: hackerone.com"
	echo
	read TARGET

if [ ! -f $HOME/BugBounty/$TARGET  ]; then
    	mkdir -p $HOME/BugBounty/$TARGET
	fi
}

t_assetfinder(){
	targeting
    assetfinder --subs-only $TARGET >> $HOME/BugBounty/$TARGET/subdomains.txt
}

t_subfinder(){
	targeting
    subfinder -d $TARGET >> $HOME/BugBounty/$TARGET/subdomains.txt
}

t_amass(){
	targeting
    amass enum -brute -d $TARGET >> $HOME/BugBounty/$TARGET/subdomains.txt
}

t_sublist3r(){
	targeting
    cd $HOME/Tools/sublist3r
    python3 sublist3r.py -b -d $TARGET >> $HOME/BugBounty/$TARGET/subdomains.txt; cd ..
}

t_gospider(){
	targeting
    gospider -s https://$TARGET -w -a -k 10 -t 10 -r --sitemap --robots --other-source -u web >> $HOME/BugBounty/$TARGET/urls.txt
    gospider -s $TARGET --other-source --include-subs -u web $HOME/BugBounty/$TARGET/urls.txt
}

t_gua(){
	targeting
    gau -subs $TARGET $HOME/BugBounty/$TARGET/urls.txt
}
