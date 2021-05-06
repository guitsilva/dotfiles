# Set environment variables
export PATH=$PATH:$HOME/.local/bin
export NVM_AUTO_USE=true
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true


# Load Antigen
source ~/.antigen/antigen/bin/antigen.zsh
antigen init ~/.antigenrc


# Set complete menu
setopt menu_complete


# Set zsh-autosuggestions options
bindkey '^A' autosuggest-accept
bindkey '^E' autosuggest-execute
export ZSH_AUTOSUGGEST_USE_ASYNC=true
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=30
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)


# Load and initialize the completion system
autoload -U compinit && compinit


# Load and initialize fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Use ripgrep
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!{.git,node_modules}'"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

# Reverse history search
export FZF_CTRL_R_OPTS="--layout=reverse"

# <Ctrl-P> for fzf file search
bindkey -r '^T'
bindkey '^P' fzf-file-widget

# <Ctrl-H> for fzf history search 
bindkey -r '^R'
bindkey '^H' fzf-history-widget

# <Ctrl-R> for fzf folder search
bindkey -r '^[c'
bindkey '^R' fzf-cd-widget


# Load and initialize DirEnv
export DIRENV_LOG_FORMAT=
eval "$(direnv hook zsh)"


# Load and initialize Starship
eval "$(starship init zsh)"
