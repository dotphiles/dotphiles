#
# dotphiles : https://github.com/dotphiles/dotfiles
#
# Set dotzsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Ben O'Hara <bohara@gmail.com>
#

zstyle ':dotzsh:load' debug 'yes'
#zstyle ':dotzsh:module:*' debug 'yes'
#zstyle ':dotzsh:module:local:*' debug 'yes'

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

zstyle ':dotzsh:module:tmux:aliases' tmuxinator 'yes'

zstyle ':dotzsh:module:syntax-highlighting' highlighters 'main' 'brackets' 'pattern' \
  'cursor' 'root' \

# Set the Zsh modules to load (man zshmodules).
zstyle ':dotzsh:load' zmodule 'stat'

# Set the Zsh functions to load (man zshcontrib).
zstyle ':dotzsh:load' zfunction 'zargs' 'zmv'

# Set the dotzsh modules to load (browse modules).
# The order matters.
zstyle ':dotzsh:load' dzmodule 'macports' 'gnu-utility' 'environment' 'terminal' \
  'utility' 'completion' 'editor' 'history' 'directory' 'ssh' 'gnupg' 'osx' \
  'archive' 'git' 'python' 'rails' 'yum' 'dpkg' 'tmux' 'screen' 'syntax-highlighting' \
  'command-not-found' 'directory' 'dpkg' 'haskell' 'node' 'pacman' 'perl' 'rsync' \
  'ruby' 'trap' 'wakeonlan' 'grc' 'mercurial' 'notify' 'dotsync' 'fasd' \
  'taskwarrior' 'history-substring-search' 'theme' \

# Set the theme to load.
# Setting it to 'random' loads a random prompt.
# Auto set to 'off' on dumb terminals.
zstyle ':dotzsh:module:theme' theme 'dotphiles'
# Set custom scheme based on hostname or domain
zstyle ':dotzsh:module:theme:hostname:natte.mcvax.org' theme 'dotphiles' 'dark' 'magenta'
zstyle ':dotzsh:module:theme:hostname:excession.mikegrice.com' theme 'dotphiles' 'dark' 'violet'
zstyle ':dotzsh:module:theme:hostname:mac-mini.benohara.net' theme 'dotphiles' 'dark' 'blue'
zstyle ':dotzsh:module:theme:domain:apnic.net' theme 'dotphiles' 'dark' 'orange'

# Load dotzsh
source "$DOTZSH/init.zsh"

# Customize to your needs...

alias rcfg="sshcd parsley /data/rancid/configs"
alias acls="sshcd parsley /opt/tftpboot/acl"

