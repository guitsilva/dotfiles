# Set environment variables
export NVM_COMPLETION=true

# Load Antigen
source ~/.antigen/antigen/bin/antigen.zsh
antigen init ~/.antigenrc


# Set complete menu
setopt menu_complete


# Set zsh-autosuggestions options
bindkey '^[a' autosuggest-accept
bindkey '^[e' autosuggest-execute


# Load and initialize the completion system
autoload -U compinit && compinit


# Load and initialize fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Use AG
export FZF_DEFAULT_COMMAND='ag --ignore node_modules -g ""'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND='ag --ignore node_modules -g "" | sed -e "s:/[^/]*$::" | uniq'

# <Ctrl-P> for fzf file search
bindkey -r '^T'
bindkey '^P' fzf-file-widget

# <Ctrl-H> for fzf history search 
bindkey -r '^R'
bindkey '^H' fzf-history-widget


# Load and initialize Starship
eval "$(starship init zsh)"


# Load and initialize DirEnv
export DIRENV_LOG_FORMAT=
eval "$(direnv hook zsh)"
