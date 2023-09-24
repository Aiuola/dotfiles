# My custom aliases

alias git-contribs='git ls-files | while read f; do git blame -w -M -C -C --line-porcelain "$f" | grep -I "^author "; done | sort -f | uniq -ic | sort -n --reverse'
alias docker-stop-all='docker stop $(docker ps -a -q)'
alias docker-rm-all='docker rm $(docker ps -a -q)'
alias git-merged='git branch --merged | egrep -v "(^\*|master|main|dev)" | xargs git branch -d'
alias apt-upgrade='sudo apt update && sudo apt upgrade && sudo apt autoremove'
alias gs='git status'
alias git-update='git fetch && git pull'
alias tmux-init='~/.config/nvim/configs/startup.sh'

alias vim='nvim'
