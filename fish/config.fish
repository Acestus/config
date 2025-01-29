if status is-interactive

end

set -U fish_greeting

# File System Navigation
abbr -a ls 'lsd -F'
abbr -a la 'lsd -AF'
abbr -a ll 'lsd -lAF'
abbr -a lg 'lsd -F --group-dirs=first'
abbr -a tree 'lsd -AF --tree'

# Development Tools
abbr -a tf 'terraform'
abbr -a gl 'git --no-pager log --decorate=full --oneline'

alias oh-my-posh='/home/acestus/.local/bin/oh-my-posh'

export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

oh-my-posh init fish --config ~/git/config/oh-my-posh/night-owl02.json | source


# Functions
function git-daily
    git add .
    git commit -m "Daily Commit"
    git push
end

abbr -a gd 'git-daily'

function daily-note
    set dir "/home/acestus/git/workspace24/md/planner/"
    cd "$dir" || return
    set filename (date +"%m-%d").md
    touch "$filename"

    # Add the header to the file with the date
    if test ! -s "$filename"
        echo (date) > "$filename"
    end

    nvim "$filename"
end

abbr -a dn 'daily-note'


# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# added by Webi for pyenv
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
