function gadd
    git diff --name-only | fzf --height=100% --multi --preview 'bat --color=always {+1}' | xargs -o git add
end
