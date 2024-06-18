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
export RSTUDIO_CHROMIUM_ARGUMENTS="--no-sandbox"
ZSH_DISABLE_COMPFIX=true
impalias () {source <(awk -F'=' '/--1/{f=1; next} /--2/{f=0} f{print "alias "$1"=\""$2"\""}' $1); source <(awk -F'=' '/--2/{f=1;next} /EOF/{f=0} f{print "alias "$1"=\"nvim "$2"\""}' $1);}
impalias ~/.shortcuts
test -f ~/.shortcuts_specific && impalias $_
export PATH=/home/prashant/.local/bin:$PATH
export PATH=/home/prashant/.cargo/bin:$PATH
export PATH=/usr/local/texlive/2024/bin/x86_64-linux:$PATH
export INFOPATH=/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH
export MANPATH=/usr/local/texlive/2024/texmf-dist/doc/man:$MANPATH
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

n ()
{
    # Block nesting of nnn in subshells
    [ "${NNNLVL:-0}" -eq 0 ] || {
        echo "nnn is already running"
        return
    }
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    command nnn "$@"

    [ ! -f "$NNN_TMPFILE" ] || {
        . "$NNN_TMPFILE"
        rm -f -- "$NNN_TMPFILE" > /dev/null
    }
}

#[ -f "/home/prashant/.ghcup/env" ] && source "/home/prashant/.ghcup/env" # ghcup-env
