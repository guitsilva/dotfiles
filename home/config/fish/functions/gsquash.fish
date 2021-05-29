function gsquash
    git log --oneline -n30 --no-merges | fzf --height=100% --preview 'git show --color=always --compact-summary {+1}' | cut -c -7 | xargs -o git commit --squash
end
