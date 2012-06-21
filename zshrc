#
# dotphiles : https://github.com/dotphiles/dotfiles
#
# Sets dotzsh options.
#

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:module:editor' keymap 'emacs'
zstyle ':omz:module:editor' editor 'vi'

# Auto convert .... to ../..
zstyle ':omz:module:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:module:terminal' auto-title 'yes'

zstyle ':omz:module:ssh:agent' forwarding 'yes'
zstyle ':omz:module:ssh:aliases' hosts 'yes'

zstyle ':omz:module:syntax-highlighting' highlighters 'main' 'brackets' 'pattern' \
  'cursor' 'root' \

# Set the Zsh modules to load (man zshmodules).
zstyle ':omz:load' zmodule 'stat'

# Set the Zsh functions to load (man zshcontrib).
zstyle ':omz:load' zfunction 'zargs' 'zmv'

# Set the Oh My Zsh modules to load (browse modules).
# The order matters.
zstyle ':omz:load' omodule 'environment' 'terminal' 'macports' 'gnu-utility' \
  'utility' 'completion' 'editor' 'history' 'directory' 'ssh' 'osx' \
  'git' 'python' 'rails' 'yum' 'dpkg' 'tmux' 'screen' 'syntax-highlighting' \
  'history-substring-search' 'prompt' \

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:module:prompt' theme 'dotphiles' 'dark' 'yellow'

# Set custom scheme based on hostname
#zstyle ':omz:module:prompt:host:hostname.example' theme 'dotphiles' 'dark' 'magenta'
#zstyle ':omz:module:prompt:host:hostname2.example2.com' theme 'dotphiles' 'dark' 'violet'
#zstyle ':omz:module:prompt:domain:example.net' theme 'dotphiles' 'dark' 'red'

zstyle ':omz:module:utility:dircolors' theme '.dir_colors/dircolors-solarized/dircolors.256dark'

#zstyle ':omz:module:tmux' auto-start 'yes'

# This will make you shout: OH MY ZSHELL!
source "$OMZ/init.zsh"

# Customize to your needs...

