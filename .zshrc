# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# zsh theme
ZSH_THEME="risto"

# plugins
plugins=(git)

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# aliases
alias up="sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo apt autoremove"

# zplugin installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# zplugin plugins
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# go
export PATH=$PATH:/usr/local/go/bin
