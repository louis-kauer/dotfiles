# zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/capr4n.omp.json)"

export POSH_CACHE_PATH="$HOME/.cache/oh-my-posh"
eval $(thefuck --alias)
alias cat=bat

alias flux-rec-all='flux reconcile source git flux-system && flux reconcile kustomization flux-system && flux reconcile kustomization apps-gravelmania'
alias kctl='kubectl'
alias kuc='kubectl config use-context'
alias kgc='kubectl config get-contexts'

export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

neofetch
