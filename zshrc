#
# dotphiles : https://github.com/dotphiles/dotphiles
#
# Sets dotzsh options.
#

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':dotzsh:module:editor' keymap 'emacs'
zstyle ':dotzsh:module:editor' editor 'vi'

# Auto convert .... to ../..
zstyle ':dotzsh:module:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':dotzsh:module:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':dotzsh:module:*' color 'yes'

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

# Set the dotzsh modules to load (browse modules).
# The order matters.
zstyle ':dotzsh:load' dzmodule 'environment' 'terminal' 'macports' 'gnu-utility' \
  'utility' 'completion' 'editor' 'history' 'directory' 'ssh' 'osx' \
  'git' 'python' 'rails' 'yum' 'dpkg' 'tmux' 'screen' 'syntax-highlighting' \
  'grc' 'mercurial' 'notify' 'dotsync' 'fasd' 'history-substring-search' 'prompt' \

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':dotzsh:module:prompt' theme 'dotphiles'

# Set custom scheme based on hostname
zstyle ':dotzsh:module:prompt:host:natte.mcvax.org' theme 'dotphiles' 'dark' 'magenta'
zstyle ':dotzsh:module:prompt:host:excession.mikegrice.com' theme 'dotphiles' 'dark' 'violet'
zstyle ':dotzsh:module:prompt:host:mac-mini.benohara.net' theme 'dotphiles' 'dark' 'blue'
zstyle ':dotzsh:module:prompt:domain:apnic.net' theme 'dotphiles' 'dark' 'orange'

zstyle ':dotzsh:module:utility:dircolors' theme '.dircolors/solarized/dircolors.256dark'

#zstyle ':dotzsh:module:tmux' auto-start 'yes'

# This will make you shout: OH MY ZSHELL!
source "$DOTZSH/init.zsh"

# Customize to your needs...source /Users/bohara/zaw/zaw.zsh
