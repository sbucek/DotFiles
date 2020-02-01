# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zprofile

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.   doubleend
#ZSH_THEME="agnoster"
ZSH_THEME=powerlevel10k/powerlevel10k

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(git golang sublime sudo npm gitignore git-prompt github archlinux bower common-aliases extract z encode64 dirhistory jsontools history urltools web-search)

source $ZSH/oh-my-zsh.sh


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/nox/Apps/google-cloud-sdk/path.zsh.inc' ]; then source '/home/nox/Apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/nox/Apps/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/nox/Apps/google-cloud-sdk/completion.zsh.inc'; fi

#export GPODDER_HOME=$HOME/Apps/gPodder


# myIP address
function myip() {
    ifconfig wlo1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "wlo1       : " $2}'
	ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

peek() { tmux split-window -p 33 $EDITOR $@ || exit; }

# Aliases
alias dus="du -sckx * | sort -nr"
alias glu='curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh\ | sh -s -- -b $(go env GOPATH)/bin latest'
alias mup="glu && gcloud components update && upgrade_oh_my_zsh && flutter upgrade && cd ~/code/go/src/github.com/sbucek/0 && find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \; && cd"
alias mup2="gem update && npm update -g"
alias py2="cd /usr/bin && sudo ln -sf python2 python && ls -l python && cd && python -V"
alias topf="find -type f -exec du -Sh {} + | sort -rh | head -n 10"
alias topd="du -hs * | sort -rh | head -10"
alias topd2="du -a | sort -n -r | head -n 10"
alias tops="du -Sh | sort -rh | head -10"
alias hd2="cd /run/media/nox/backup"
alias appcfg.py="/home/nox/Apps/google-cloud-sdk/platform/google_appengine/appcfg.py"
alias sys='sudo dmidecode | grep -A 9 "System Information"'
alias ctf="cd /usr/share/themes/Numix-Frost/gnome-shell && gedit gnome-shell.css"
alias c="killall conky && conky & disown && exit"

alias config='/usr/bin/git --git-dir=/home/nox/.cfg/ --work-tree=/home/nox'
alias yay='yay --aur'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
