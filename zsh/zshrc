#
# dotphiles : https://github.com/dotphiles/dotphiles
#
# Sets dotzsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Ben O'Hara <bohara@gmail.com>
#

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':dotzsh:module:editor' keymap 'emacs'
zstyle ':dotzsh:module:editor' editor 'vi'

# Auto convert .... to ../..
zstyle ':dotzsh:module:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':dotzsh:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':dotzsh:*:*' color 'yes'

# Setup aliases for modules (disable per module below).
zstyle ':dotzsh:module:*' aliases 'yes'

# Auto set the tab and window titles.
zstyle ':dotzsh:module:terminal' auto-title 'yes'

zstyle ':dotzsh:module:ssh:agent' forwarding 'yes'
zstyle ':dotzsh:module:ssh:aliases' hosts 'yes'

zstyle ':dotzsh:module:syntax-highlighting' highlighters 'main' 'brackets' 'pattern' \
  'cursor' 'root' \

# Set the Zsh modules to load (man zshmodules).
zstyle ':dotzsh:load' zmodule 'stat'

# Set the Zsh functions to load (man zshcontrib).
zstyle ':dotzsh:load' zfunction 'zargs' 'zmv'

# Set the Oh My Zsh modules to load (browse modules).
# The order matters.
zstyle ':dotzsh:load' dzmodule 'environment' 'terminal' 'macports' 'gnu-utility' \
  'utility' 'completion' 'editor' 'history' 'directory' 'ssh' 'osx' \
  'git' 'python' 'rails' 'yum' 'dpkg' 'tmux' 'screen' 'syntax-highlighting' \
  'dotsync' 'history-substring-search' 'theme' \

# Set the theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':dotzsh:module:theme' theme 'dotphiles'
# Set custom scheme based on hostname
#zstyle ':dotzsh:module:theme:host:hostname' theme 'dotphiles' 'soldark' 'yellow'
#zstyle ':dotzsh:module:theme:host:hostname2.example2.com' theme 'dotphiles' 'soldark' 'violet'
#zstyle ':dotzsh:module:theme:domain:example.net' theme 'dotphiles' 'soldark' 'red'

#zstyle ':dotzsh:module:tmux' auto-start 'yes'

# Load dotzsh
source "$DOTZSH/init.zsh"

# Customize to your needs...

