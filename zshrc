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
zstyle ':omz:module:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:module:*' color 'yes'

# Setup aliases for modules (disable per module below).
zstyle ':omz:module:*' aliases 'yes'

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
  'notify' 'dotsync' 'fasd' 'history-substring-search' 'prompt' \

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:module:prompt' theme 'dotphiles'

# Set custom scheme based on hostname
zstyle ':omz:module:prompt:host:natte.mcvax.org' theme 'dotphiles' 'dark' 'magenta'
zstyle ':omz:module:prompt:host:excession.mikegrice.com' theme 'dotphiles' 'dark' 'violet'
zstyle ':omz:module:prompt:host:mac-mini.benohara.net' theme 'dotphiles' 'dark' 'blue'
zstyle ':omz:module:prompt:domain:apnic.net' theme 'dotphiles' 'dark' 'orange'

zstyle ':omz:module:utility:dircolors' theme '.dircolors/solarized/dircolors.256dark'

#zstyle ':omz:module:tmux' auto-start 'yes'

# This will make you shout: OH MY ZSHELL!
source "$OMZ/init.zsh"

# Customize to your needs...source /Users/bohara/zaw/zaw.zsh
