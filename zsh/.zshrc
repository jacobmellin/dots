source ~/.myprofile
#printf "\u1b[35m$daily_reminder\033[m\n"

PURE_PROMPT_SYMBOL=↪
echo Noch $((`date -d "Oct 1" +%j` - `date +%j`)) Tage bis Oktober!

echo "No smoking, no drinking alcohol, no eating too much and actively loving oneself."

# Go binaries
export PATH="$PATH:/home/jacob/go/bin"
export PATH="$PATH:/home/jacob/scripts"

# User configuration (ZSH)
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

function f() { cd $(find ~/projekte /media/ssd/Projekte ~/Nextcloud/Projekte -maxdepth 3 -not -path "*node_modules/*" -type d | fzf) }
function zf() { z "$(z | gawk 'match($0, /^[0-9]+  +(.*)/, result) {print result[1]}' | fzf)" }
function tmv() { nvim .}

#bindkey -M menuselect 'h' vi-backward-char
#bindkey -M menuselect 'k' vi-up-line-or-history
#bindkey -M menuselect 'l' vi-forward-char
#bindkey -M menuselect 'j' vi-down-line-or-history
#bindkey -v
#bindkey '^ ' autosuggest-accept
#bindkey '^R' history-incremental-search-backward
bindkey -s '^F' "f^M"
bindkey -s '^Z' "zf^M"
bindkey -s '^V' "tmv .^M"
#bindkey -s '^o' 'OPENER=cd;lf\n'

bindkey '^T' '__fzf_history__'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

TEXMFDIST=/usr/share/texmf-dist
alias tlmgr='$TEXMFDIST/scripts/texlive/tlmgr.pl --usermode'

# Rust binaries
export PATH=~/.cargo/bin:$PATH

# Autojump
[[ -s /home/jacob/.autojump/etc/profile.d/autojump.sh ]] && source /home/jacob/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

# .local binaries
export PATH=:/home/jacob/.local/bin:$PATH

# aliases
alias lutriswine=~/.local/share/lutris/runners/wine/lutris-GE-Proton7-37-x86_64/bin/wine
alias xo=xdg-open
alias vi=vim
alias vim=nvim

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Get Znap
[[ -r ~/tools/znap/znap.zsh ]] ||
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/tools/znap

source ~/tools/znap/znap.zsh

# ZSH Plugins
znap prompt sindresorhus/pure
znap source marlonrichert/zsh-autocomplete
znap source agkozak/zsh-z
#znap source jeffreytsess/zsh-vi-mode
#znap source marlonrichter/zcolors
#znap eval zcolors "zcolors ${(q)LS_COLORS}"

