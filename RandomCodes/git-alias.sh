#git config --global alias.st status
#git config --global alias.co checkout
#git config --global alias.br branch
#git config --global alias.cm commit

alias glg="git log"
alias gcm="git commit"
alias gst="git status"
alias gco="git checkout"
alias gps="git push"
alias gmg="git merge"
alias gad="git add"
alias gbr="git branch"
alias gpl="git pull"

_completion_loader git log
_completion_loader git commit
_completion_loader git status
_completion_loader git checkout
_completion_loader git push
_completion_loader git merge
_completion_loader git add
_completion_loader git branch
_completion_loader git pull

complete -F _git_log glg
complete -F _git_commit gcm
complete -F _git_status gst
complete -F _git_checkout gco
complete -F _git_push gps
complete -F _git_merge gmg
complete -F _git_add gad
complete -F _git_branch gbr
complete -F _git_pull gpl
