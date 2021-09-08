if type -q fzf
    # Bindings
    # <Ctrl-P> - file search
    # <Ctrl-R> - folder search
    # <Ctrl-H> - command search
    __fzf_key_bindings
    bind \cp fzf-file-widget
    bind \cr fzf-cd-widget
    bind \ch fzf-history-widget

    # Commands
    set -gx FZF_DEFAULT_COMMAND "fd --type=file --hidden --ignore-file=$HOME/.fzfignore"
    set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

    set -gx FZF_ALT_C_COMMAND "fd --type=directory --hidden --ignore-file=$HOME/.fzfignore --search-path=$HOME"

    # Options
    set -gx FZF_DEFAULT_OPTS "--no-color --layout=reverse --height 50%"
    set -gx FZF_CTRL_R_OPTS $FZF_DEFAULT_OPTS
    set -gx FZF_ALT_C_OPTS $FZF_DEFAULT_OPTS
end
