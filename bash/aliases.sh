alias ll='ls -laoh'

alias be="bundle exec"

alias pause_guards="psgrep -n bin/guard | cut -f 2 -d ' ' | xargs kill -USR1"
alias unpause_guards="psgrep -n bin/guard | cut -f 2 -d ' ' | xargs kill -USR2"

alias rserver='bundle exec rails server -p $((0x`pwd | md5 | cut -b 1-4` % (65536 - 1024) + 1024))'
alias amend='git commit --amend -C HEAD'

alias attach-to-tmux-session='tmux new-session -t'