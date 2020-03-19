# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# zsh theme
ZSH_THEME="robbyrussell"

# plugins
plugins=(git)

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# aliases
alias up="sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo apt autoremove"

# zinit installer
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# zinit plugins
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# go
export PATH=$PATH:/usr/local/go/bin
alias air='~/.air'

# my alias commands
alias loginvpn='sh ~/commands/loginvpn.sh'