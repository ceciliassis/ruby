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
 
complete -F _git_log glg
complete -F _git_commit gcm
complete -F _git_status gst
complete -F _git_checkout gco
complete -F _git_push gps
complete -F _git_merge gmg
complete -F _git_add gad
complete -F _git_branch gbr
