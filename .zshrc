# =============================================================================
# ZSHRC
# =============================================================================

## Environment Variables
export TERM=xterm
export GPG_TTY=$(tty)
export POSH_CACHE_PATH="$HOME/.cache/oh-my-posh"
export PYENV_ROOT="$HOME/.pyenv"
export NVM_DIR="$HOME/.nvm"

## PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$HOME/GolandProjects/kubectl-config-merge/out:$PATH"
export PATH="/opt/homebrew/opt/go@1.23/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

if command -v go &> /dev/null; then
    export PATH="$(go env GOPATH)/bin:$PATH"
fi

## Tools

### Python (pyenv)
if command -v pyenv &> /dev/null; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
fi

### Node (nvm)
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

### direnv
if command -v direnv &> /dev/null; then
    eval "$(direnv hook zsh)"
fi

### thefuck
if command -v thefuck &> /dev/null; then
    eval "$(thefuck --alias)"
fi

### GPG
gpgconf --launch gpg-agent 2>/dev/null

### Oh My Posh
eval "$(oh-my-posh init zsh --config ~/dotfiles/.config/zsh/capr4n.omp.json)"

## Aliases

### Navigation
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

### Kubernetes
alias k='kubectl'
alias kuc='kubectl config use-context'
alias kgc='kubectl config get-contexts'
alias kns='kubectl config set-context --current --namespace'

### Flux
alias flux-rec='flux reconcile source git flux-system -n flux-system && flux reconcile kustomization --all -n flux-system'
alias flux-rec-all='flux reconcile source git flux-system && flux reconcile kustomization flux-system && flux reconcile kustomization apps-gravelmania'

### Git
alias g='git'
alias ga='git add'
alias gc='git commit -m'
alias gco='git checkout'
alias gst='git status -sb'
alias gs='git status'
alias gpu='git push'
alias gp='git pull'
alias gd='git diff'
alias gcam='git commit -am'
alias gb='git branch'
alias gcl='git clone'
alias gf='git fetch'
alias glog='git log --oneline --graph --decorate'

## ZSH Plugins

### Autosuggestions
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

### Syntax Highlighting (must be last)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh