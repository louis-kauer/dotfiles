# zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(oh-my-posh init zsh --config ~/dotfiles/.config/zsh/capr4n.omp.json)"

export POSH_CACHE_PATH="$HOME/.cache/oh-my-posh"
eval $(thefuck --alias)

## Python 
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

## CLI Navigation

alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."


## K8s Aliases

# Flux Gravelmania
alias flux-rec-all='flux reconcile source git flux-system && flux reconcile kustomization flux-system && flux reconcile kustomization apps-gravelmania'

# General K8s Aliases
alias k='kubectl'
alias kuc='kubectl config use-context'
alias kgc='kubectl config get-contexts'


## Git Aliases
alias g='git'

# Essential Git Aliases
alias ga='git add'
alias gc='git commit -m'
alias gco='git checkout'
alias gst='git status -sb'
alias gs='git status'
alias gpu='git push'
alias gp='git pull'
alias gd='git diff'
alias gcam='git commit -am' # commit all with message
alias gb='git branch'
alias gcl='git clone'
alias gf='git fetch'

# Log-related Git Aliases
alias glog='git log --oneline --graph --decorate'

export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

export TERM=xterm

eval "$(direnv hook zsh)"

## PATH BIN'S

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH=$PATH:$HOME/GolandProjects/kubectl-config-merge/out
export PATH="/opt/homebrew/opt/go@1.23/bin:$PATH"

## NVM

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

neofetch
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
