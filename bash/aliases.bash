alias cls="clear"
alias cd..="cd .."
alias ll="ls -al"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

alias run_backup="/Users/edmistond/projects/backup_script/backup.py"

alias fixairplay="sudo kill `ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'`"

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
alias gs='git status'
alias ggd='git lg'

