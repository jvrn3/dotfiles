source "$HOME/.config/fish/abbreviations.fish"
source "$HOME/.config/fish/aliases.fish"

set -gx PATH $PATH /home/jvrn3/.gem/ruby/2.6.0/bin

set -gx EDITOR "nvim --noplugin"

status --is-interactive; and pyenv init - | source

status --is-interactive; and pyenv virtualenv-init - | source


set NPM_PACKAGES "$HOME/.npm-packages"

set PATH $NPM_PACKAGES/bin $PATH

set MANPATH $NPM_PACKAGES/share/man $MANPATH  
