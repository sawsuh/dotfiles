export ZSH="/home/prash/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='ag -l --hidden -g ""'
export FZF_DEFAULT_OPTS='--color=16,bg+:0,bg:0,fg+:15,pointer:6,prompt:6'
ZSH_DISABLE_COMPFIX=true
awk '/--Commands/, /--Files/' .shortcuts | sed '1d;$d' | awk -F": " '{print "alias "$1"=\x27"$2"\x27"}' > ~/.shorttemp
awk '/--Files/,EOF' .shortcuts | sed '1d' | awk -F ": " '{print "alias "$1"=\"nvim "$2"\""}' >> ~/.shorttemp
source ~/.shorttemp
rm ~/.shorttemp
export PATH=/home/prash/.local/bin:$PATH
#task
TRAPWINCH() {
  zle && { zle reset-prompt; zle -R }
}

bindkey -v
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey -M vicmd '^[OA' history-beginning-search-backward-end \
                 '^[[A' history-beginning-search-backward-end \
                 '^[OB' history-beginning-search-forward-end \
                 '^[[B' history-beginning-search-forward-end
bindkey -M viins '^[OA' history-beginning-search-backward-end \
                 '^[[A' history-beginning-search-backward-end \
                 '^[OB' history-beginning-search-forward-end \
                 '^[[B' history-beginning-search-forward-end
bindkey -M viins 'jj' vi-cmd-mode
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
