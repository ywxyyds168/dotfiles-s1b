# Source CachyOS Fish configuration
source /usr/share/cachyos-fish-config/cachyos-config.fish

# Set paths
set -Ux PATH $HOME/.cargo/bin $PATH
set -x PATH $PATH ~/.emacs.d/bin
set -gx PATH $HOME/depot_tools $PATH

# Initialize Starship prompt
starship init fish | source


alias ls 'lsd'
alias cat 'bat'
alias vim 'nvim'

# Emacs aliases
alias ec 'emacsclient -c -a "" &; disown'
alias et 'emacsclient -t -a ""'

set -Ux LS_COLORS "di=01;34:ln=01;36:ex=01;32:ow=01;36:st=01;35:tw=01;36"

