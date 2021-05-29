function gsw
    git branch --list | fzf | xargs -o git switch
end
