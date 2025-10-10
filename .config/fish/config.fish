# Source CachyOS Fish configuration (CachyOS-specific)
# If not using CachyOS, comment out this line or install the cachyos-fish-config package
if test -f /usr/share/cachyos-fish-config/cachyos-config.fish
    source /usr/share/cachyos-fish-config/cachyos-config.fish
end

# Set paths
set -Ux PATH $HOME/.cargo/bin $PATH
set -x PATH $PATH ~/.emacs.d/bin
set -gx PATH $HOME/depot_tools $PATH

# Initialize Starship prompt
starship init fish | source


alias ls 'lsd'
alias cat 'bat'
alias vim 'nvim'

