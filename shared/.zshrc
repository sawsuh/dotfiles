export ZSH="/home/prashant/.oh-my-zsh"
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
source <(awk -F'=' '/--Commands/{f=1; next} /--FilestoVim/{f=0} f{print "alias "$1"=\""$2"\""}' .shortcuts)
source <(awk -F'=' '/--FilestoVim/{f=1;next} EOF f{print "alias "$1"=\"nvim "$2"\""}' .shortcuts)
export PATH=/home/prashant/.local/bin:$PATH
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
eval "$(ssh-agent -s > /dev/null)"
