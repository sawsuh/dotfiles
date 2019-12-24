export ZSH="/home/prash/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(
  git
  pass
)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
ZSH_DISABLE_COMPFIX=true
awk '/--Commands/, /--Files/' .shortcuts | sed '1d;$d' | awk -F": " '{print "alias "$1"=\x27"$2"\x27"}' > ~/.shorttemp
awk '/--Files/,EOF' .shortcuts | sed '1d' | awk -F ": " '{print "alias "$1"=\"nvim "$2"\""}' >> ~/.shorttemp
source ~/.shorttemp
rm ~/.shorttemp
export PATH=/home/prash/.local/bin:$PATH
task
TRAPWINCH() {
  zle && { zle reset-prompt; zle -R }
} 
