# zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/capr4n.omp.json)"

export POSH_CACHE_PATH="$HOME/.cache/oh-my-posh"
eval $(thefuck --alias)
alias cat=bat


## K8s Aliases

# Flux Gravelmania
alias flux-rec-all='flux reconcile source git flux-system && flux reconcile kustomization flux-system && flux reconcile kustomization apps-gravelmania'

# General K8s Aliases
alias kctl='kubectl'
alias kuc='kubectl config use-context'
alias kgc='kubectl config get-contexts'


## Git Aliases
alias g='git'

# Essential Git Aliases
alias ga='git add'
alias gc='git commit -m'
alias gco='git checkout'
alias gst='git status -sb'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gpl='git pull'
alias gcm='git commit -m' # commit with message
alias gcam='git commit -am' # commit all with message
alias gb='git branch'
alias gcl='git clone'

# Log-related Git Aliases
alias glog='git log --oneline --graph --decorate'

# Short Git Status
alias gs='git status -s'

# Functions
gca() {
    git commit --amend -m "$1"
}


export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

neofetch
