dotphiles
=========

A community driven framework of dotfiles, for the usual terminal apps and
shells, designed to work across multiple platforms and degrade for older
versions of software or O/S, allowing you to use the same settings on all
your machines.

  - **Backup**, **restore**, and **sync** the prefs and settings for your
    toolbox.
    Your dotfiles might be the most important files on your machine.
  - **Learn** from the community. Discover new tools for your toolbox and new
    tricks for the ones you already use.
  - **Share** what you've learned with the rest of us.

Example dotfiles for:

  - `zsh`
  - `vim` `nano`
  - `git` `mercurial` `subversion`
  - `python` `ruby` `perl`
  - `screen` `tmux`
  - `mutt` `irssi`
  - and many more...

Installation
------------

  1. Sign up for an account on [github][1] and fork the project.

  2. Clone your fork.

        git clone --recursive git@github.com:*username*/dotphiles.git ~/.dotfiles

  3. Setup your terminal and the dotfiles you want to use, see below.

  4. Edit `dotsyncrc` and enable dotfiles to use.

  5. Run dotsync `./.dotfiles/dotsync/bin/dotsync -L`

  6. Start a new login shell.

Configuration
-------------

### dotfiles

These are the minimum files you'll want to edit

  - `dotsyncrc` settings for [dotsync][2]
  - `zsh/zshrc` settings for [dotzsh][3]
  - `vim/vimrc` settings for [dotvim][4]
  - and any dotfiles you enable in `dotsyncrc`

These are stable and reported working...

  - `aptitude` - Configure aptitude
  - `bin` - ~/bin for scripts etc
  - `ctags` - Configure ctags
  - `git` - Configure git
  - `gnupg` - Configure gnupg
  - `grc` - Configure grc
  - `input` - Configure input
  - `mercurial` - Configure mercurial
  - `mysql` - Configure mysql client
  - `python` - Configure python
  - `rpm` - Configure rpm
  - `ruby` - Configure ruby
  - `screen` - Configure screen
  - `shell` - Generic shell config files
  - `sqlite` - Configure sqlite client
  - `ssh` - Configure ssh client
  - `subversion` - Configure subversion
  - `tmux` - Configure tmux

These probably work...

  - `ack` - Configure ack - i dont use it
  - `cmus` - Configure cmus - i dont use it
  - `curl` - Configure curl - didnt work multiplatform, i dont use it anymore
  - `irssi` - Configure irssi - i dont use it
  - `mutt` - Configure mutt - i dont use it
  - `nano` - Configure nano - i dont use it, should work though
  - `task` - Configure taskwarrior - i dont use it
  - `wget` - Configure wget - didnt work multiplatform, i dont use it anymore

### terminal

dotphiles uses the [base16][5] color theme
by default, install the colour schemes for your terminal.
See `deploy/terminal`

vim-airline requires patched fonts for the 'fancy fonts' options, you can
find links to them to install [here][6] and configure your terminal to use
one, Meslo works great.

### ignores

Some files that will be auto generated into the symlinked dotfiles directory
should *never* be commited and uploaded to github.

The included `.gitignore` and `.rsyncignore` files, ignore the majority, but make sure when
commiting that you dont include any personal info you dont want in public!

### deploy

  - `deploy/osx` setup osx and install ports & brews (only use one)
  - `deploy/linux` setup linux and install packages
    - `packages/macports` add ports to be installed by `osx` (select one)
    - `packages/homebrew` add brews to be installed by `osx` (select one)
    - `packages/apt` add packages to be installed by `linux` on apt based systems

### dotsync

See the documentation for [dotsync][2] for more information.

  - dotsyncrc

    Add dotfiles to `dotsyncrc` like

        [files]
        ...
        dotfile
        dir
        dir/dotfile
        ...
        [endfiles]

    dotsync will look for

         ~/$DOTFILES/dotfile.d/localhost
         ~/$DOTFILES/dotfile.d/$HOSTNAME
         ~/$DOTFILES/dotfile.d/$DZHOST
         ~/$DOTFILES/dotfile.d/$DOMAIN
         ~/$DOTFILES/dotfile

   And link the first one it finds instead of the standard dotfile.  The
   `localhost` dotfile will be excluded from your repo.

   $DZHOST is passed to remote hosts and contains the hostname as entered in `dotsyncrc`

  - Usage

    Dotsync can be used to link your dotfiles into place

    - `dotsync -L` symlink dotfiles into place
    - `dotsync -U` update from github

    And update remote machines

    - `dotsync -I -H hostname` initialise *hostname* with the set of dotfiles
    - `dotsync -U -H hostname` update dotfiles on *hostname* from github
    - `dotsync -I -H hostname -r` initialise *hostname* with the set of
      dotfiles with rsync
    - `dotsync -U -H hostname -r` update dotfiles on *hostname* with rsync
    - `dotsync -A` update dotfiles on **all hosts**

  - Backups

    Any existing ~/.dotfiles will be backed up into `~/.backup/dotfiles/` if
    found

Editing
-------

When you edit your dotfiles, you should commit the changes to git with

    git commit -a

And periodically push the changes to github

    git push

Updating
--------

To keep your fork upto date with additions to the dotphiles repo, do the following

    cd ~/.dotfiles
    git remote add upstream https://github.com/dotphiles/dotphiles
    git fetch upstream
    git merge upstream/master

License
-------

Copyright (c) 2012 [dotphiles contributors][7]

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[1]: https://github.com
[2]: https://github.com/dotphiles/dotsync
[3]: https://github.com/dotphiles/dotzsh
[4]: https://github.com/dotphiles/dotvim
[5]: https://github.com/chriskempson/base16
[6]: https://github.com/Lokaltog/powerline-fonts
[7]: https://github.com/dotphiles/dotphiles/graphs/contributors

