source /Users/$USER/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Hide the hostname
# source .zshrc.pre-oh-my-zsh

export ZSH="/Users/$USER/.antigen/bundles/robbyrussell/oh-my-zsh/"
source $ZSH/oh-my-zsh.sh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
# antigen bundle heroku
antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found
antigen bundle autojump
antigen bundle docker
# A command-line fuzzy finder
antigen bundle fzf

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
# antigen theme random
antigen theme cloud

# Tell Antigen that you're done.
antigen apply

# load aliases config
source ~/.config/.aliasrc

# load jenv plugin config
source ~/.config/jenv/.jenvrc

# load normal bash config (Mainly contains some environment variables)
source ~/.config/bash/.bash_profile
