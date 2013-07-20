# Bash completion for git commands and branch names.
# Also required for the prompt.
. ~/projects/dotfiles/bash/lib/git-completion.bash

# Rake task completion.
complete -C ~/projects/dotfiles/bash/lib/rake-completion.rb -o default rake

