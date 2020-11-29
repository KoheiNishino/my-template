# -----------------------------
# Alias
# -----------------------------

alias ls='ls -G'
alias la='ls -aGl'
alias ll='ls -Gl'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias mkdir='mkdir -p'

alias relogin="exec $SHELL -l"
alias vi='vim'

alias b='bundle'
alias be='bundle exec'
alias bi='bundle install'
alias bo='bundle outdated'
alias bu='bundle update'
alias berc='bundle exec rails c'

alias d='docker'
alias di='docker images'
alias dp='docker ps'
alias dpa='docker ps -a'
alias dr='docker rm'
alias drf='docker rm -f'
alias dvl='docker volume ls'
alias dc='docker-compose'
alias dcb='docker-compose build'
alias dcd='docker-compose down'
alias dcs='docker-compose stop'
alias dcu='docker-compose up'
alias dcud='docker-compose up -d'

alias g='git'
alias ga='git add'
alias gaa='git add -A'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log'
alias gm='git merge'
alias gp='git push'
alias gpoh='git push origin HEAD'
alias gres='git reset'
alias grev='git revert'
alias gs='git status'
alias gst='git status'

# -----------------------------
# Global Alias
# -----------------------------
alias -g L='| less'
alias -g H='| head'
alias -g G='| grep --color=auto'
alias -g GI='| grep -ir --color=auto'

# -----------------------------
# eval
# -----------------------------

eval "$(anyenv init -)"
eval "$(starship init zsh)"

# -----------------------------
# Completion
# -----------------------------

# シェル関数`compinit`の自動読み込み
autoload -Uz compinit && compinit -i

# FPATHに`~/.zsh/completion`を追加
fpath=(~/.zsh/completion $fpath)

# 入力補完機能を使用する
zstyle ':completion:*:*:git:*' script ~/.zsh/completion/git-completion.bash

# -----------------------------
# Options
# -----------------------------

# cd なしでディレクトリ移動可
setopt auto_cd

# cd [TAB] で以前移動したディレクトリを表示
setopt auto_pushd

# コマンドミスを修正
setopt correct
  
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# 直前と同じコマンドの場合はヒストリに追加しない
setopt hist_ignore_dups
 
# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space
 
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 同時に起動した zsh の間でヒストリを共有する
setopt share_history
