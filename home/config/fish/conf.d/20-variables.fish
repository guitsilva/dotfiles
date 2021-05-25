# Add user bin to PATH
fish_add_path ~/.local/bin

# Bat style
if type -q bat
    set -gx BAT_THEME GitHub
    set -gx BAT_STYLE "changes,numbers,snip"
end
