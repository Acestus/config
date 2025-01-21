if status is-interactive

end

set -U fish_greeting

#Aliases
alias ls="lsd -F"
alias la="lsd -AF"
alias ll="lsd -lAF"
alias lg="lsd -F --group-dirs=first"
alias oh-my-posh='~/.local/bin/oh-my-posh'
oh-my-posh init fish --config ~/.config/oh-my-posh/night-owl02.json | source

# Functions
function gd
    git add .
    git commit -m "Daily Commit"
    git push
end

function dn
    set dir "~/git/workspace24/md/planner/"
    cd "$dir" || return
    set filename (date +"%m-%d").md
    touch "$filename"

    # Add the header to the file with the date
    if test ! -s "$filename"
        echo (date) > "$filename"
    end

    nvim "$filename"
end


# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# added by Webi for pyenv
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
