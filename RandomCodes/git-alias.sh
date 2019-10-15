#git config --global alias.st status
#git config --global alias.co checkout
#git config --global alias.br branch
#git config --global alias.cm commit

alias gco="git checkout"
alias glg="git log"
alias gst="git status"
alias gps="git push"
alias gmg="git merge"
alias gcm="git commit"
alias gad="git add"
alias gbr="git branch"

__git_complete gco _git_checkout
__git_complete glg _git_log
__git_complete gst _git_status
__git_complete gps _git_push
__git_complete gmg _git_merge
__git_complete gcm _git_commit
__git_complete gad _git_add
__git_complete gbr _git_branch

 
