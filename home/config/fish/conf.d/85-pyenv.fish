# Set pyenv root
# set -gx PYENV_ROOT $HOME/.pyenv

# Add pyenv to PATH
fish_add_path ~/.pyenv/bin

# Initialize
pyenv init --path | source
