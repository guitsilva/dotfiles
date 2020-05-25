# Load Antigen
source ~/.antigen/antigen/bin/antigen.zsh
antigen init ~/.antigenrc


# Set complete menu
setopt menu_complete


# Set zsh-autosuggestions options
bindkey '^[a' autosuggest-accept
bindkey '^[e' autosuggest-execute
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)


# Load and initialize the completion system
autoload -U compinit && compinit


# Load and initialize fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# <Ctrl-P> for fzf file search
bindkey -r '^T'
bindkey '^P' fzf-file-widget

# <Ctrl-H> for fzf history search 
bindkey -r '^R'
bindkey '^H' fzf-history-widget
