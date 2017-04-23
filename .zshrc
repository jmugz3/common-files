export ZSH=/Users/jmugz3/.oh-my-zsh

# ~/.oh-my-zsh/themes/
ZSH_THEME="muse"

# CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

# ~/.oh-my-zsh/plugins/*
# ~/.oh-my-zsh/custom/plugins/
plugins=(git osx mercurial google github mysql jmugz3)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/usr/local/mysql/bin"
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
eval "$(pyenv init -)"

# export LANG=en_US.UTF-8

# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Options
setopt NO_BEEP
setopt HIST_REDUCE_BLANKS

# exports
export NVM_DIR="/Users/jmugz3/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export NVM_DIR="/Users/jmugz3/.nvm"


# helper functions
function hiddenOn() { defaults write com.apple.Finder AppleShowAllFiles YES ; }
function hiddenOff() { defaults write com.apple.Finder AppleShowAllFiles NO ; }
function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
	ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

# run 'alias'
alias editzsh='vim ~/.zshrc'
alias ohmyzsh='cd ~/.oh-my-zsh'
alias loadzsh='source ~/.zshrc'

alias lh="ls -a | egrep "^\.""
alias trash="rm -i"
alias showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

# sort files in current directory by the number of words they contain
alias wordy="wc -w * | sort | tail -n10"
alias filecount="ls -aRF | wc -l"
alias size="du -hsc *"

alias ..=' cd ..; ls'
alias ...=' cd ..; cd ..; ls'
alias ....=' cd ..; cd ..; cd ..; ls'
alias cd..='..'
alias cd...='...'
alias cd....='....'

alias cl='clear'
alias cll='cl & loadzsh'
alias desktop='cd ~/Users/jmugz3/Desktop'
alias fm='finger -m'
alias cpv='rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --'

alias tmux='tmux -2 -u'

alias k9='kill -9'
alias -g G='| grep '

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jmugz3/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/jmugz3/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jmugz3/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/jmugz3/google-cloud-sdk/completion.zsh.inc'; fi
