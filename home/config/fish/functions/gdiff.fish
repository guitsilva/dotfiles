function gdiff
    git diff --name-only | fzf --height=100% --preview 'git diff --color=always {+1} | tail -n +6'
end
