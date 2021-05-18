# Commands
set -gx FZF_DEFAULT_COMMAND "fd --type file --hidden --exclude '{node_modules,.git,.vscode,.fnm,.rustup,.cache,.icons,.themes,.var,.local}'"
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

set -gx FZF_ALT_C_COMMAND "fd --type directory --hidden --exclude '{node_modules,.git,.vscode,.fnm,.rustup,.cache,.icons,.themes,.var,.local}'"

# Options
set -gx FZF_CTRL_R_OPTS "--layout=reverse --height 40%"

# Bindings
# <Ctrl-P> - file search
# <Ctrl-R> - folder search
# <Ctrl-H> - command search
if type -q fzf
  __fzf_key_bindings
  bind \cp fzf-file-widget
  bind \cr fzf-cd-widget
  bind \ch fzf-history-widget
end
