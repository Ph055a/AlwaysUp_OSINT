# 		ZSH Configuration
# ------------------------------------
export ZSH=/home/ph055a/.oh-my-zsh		# Path to your oh-my-zsh installation
TERM=xterm-256color						# Term
ZSH_THEME="blinks"				# Theme See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
CASE_SENSITIVE="false"					# Uncomment the following line to use case-sensitive completion.
plugins=(jsontools docker httpie)		# Plugins	
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

# ------------------------------------

# 		Go
# ------------------------------------
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:$HOME/.local/bin:$HOME/.bin

# 		Misc
# ------------------------------------
alias Zshreload="source .zshrc" 		# Reload alias
alias Xreload="xrdb ~/.Xresources"		# Reload Xresources
# ------------------------------------