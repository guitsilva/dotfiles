function grests
    git diff --name-only --cached | fzf --height=100% --multi --preview 'bat --color=always {+1}' | xargs -o git restore --staged
end
