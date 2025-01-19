source ~/.myprofile

PURE_PROMPT_SYMBOL=

# android
export PATH="$PATH:/opt/android-sdk/platform-tools"

# Go binaries
export PATH="$PATH:/home/jacob/go/bin"
export PATH="$PATH:/home/jacob/scripts"

export PATH="$PATH:/home/jacob/projects/streaming"
export PATH="$PATH:/home/jacob/bin"

# User configuration (ZSH)
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

function f() { cd $(find ~/ ~/projects ~/.config /media/ssd/Projekte ~/Nextcloud/Projekte -maxdepth 7 -not -path "*node_modules/*" -type d | fzf) }
function zf() { zshz "$(zshz | gawk 'match($0, /^[0-9]+  +(.*)/, result) {print result[1]}' | fzf)" }
function zfv() { zshz "$(zshz | gawk 'match($0, /^[0-9]+  +(.*)/, result) {print result[1]}' | fzf)" && nohup neovide . >/dev/null 2&1 }
function tmv() { nohup neovide . & }

function k() { pkill -f -9 $1 }

#bindkey -M menuselect 'h' vi-backward-char
#bindkey -M menuselect 'k' vi-up-line-or-history
#bindkey -M menuselect 'l' vi-forward-char
#bindkey -M menuselect 'j' vi-down-line-or-history
#bindkey -v
bindkey '^K' autosuggest-accept
#bindkey '^R' history-incremental-search-backward
bindkey -s '^F' "f^M"
bindkey -s '^T' "task^M"
bindkey -s '^Z' "zf^M"
bindkey -s '^P' "zfv^M"
bindkey -s '^V' "tmv .^M"
bindkey -s '^O' "nvim ~/Nextcloud/ObsidianVault ^M"
bindkey -s '^ö' "lfcd"
#bindkey -s '^o' 'OPENER=cd;lf\n'


alias ctl=systemctl








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

function nvimconf() {
    nvim ~/.config/nvim
}

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Get Znap
[[ -r ~/znap-repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/znap-repos/znap

source ~/znap-repos/znap/znap.zsh

# ZSH Plugins
znap prompt sindresorhus/pure
#znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-completions
znap source agkozak/zsh-z
znap source joshskidmore/zsh-fzf-history-search
znap source zsh-users/zsh-autosuggestions
#znap source jeffreytsess/zsh-vi-mode
#znap source marlonrichter/zcolors
#znap eval zcolors "zcolors ${(q)LS_COLORS}"

# opam configuration
[[ ! -r /home/jacob/.opam/opam-init/init.zsh ]] || source /home/jacob/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# Functions
function countdown() {
    seconds=$(($1 * 60))
    start="$(($(date +%s)+ $seconds))"
    while [ "$start" -ge `date +%s` ]; do
        time="$(( $start - `date +%s` ))"
        printf '%s\r' "$(date -u -d "@$time" +"%H:%M:%S")"
    done
    pw-play "/tmp/INTERVAL_BELL.mp3"
}

# bun completions
[ -s "/home/jacob/.bun/_bun" ] && source "/home/jacob/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Shopify Hydrogen alias to local projects
alias h2='$(npm prefix -s)/node_modules/.bin/shopify hydrogen'

alias ls='ls -F --color=auto'



#eval `ssh-agent`
#ssh-add ~/.ssh/id_rsa_old

function stich() {
  echo "$(date -Iseconds): $1" >> stiche.txt 
}

function tabletarea() {
  exec xsetwacom set "Wacom Intuos Pro M Pen stylus" MapToOutput $(slop)
}

lfcd () {
    # `command` is needed in case `lfcd` is aliased to `lf`
    cd "$(command lf -print-last-dir "$@")"
}
