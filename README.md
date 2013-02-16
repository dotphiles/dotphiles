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

  - `dotsyncrc` settings for [dotsync][7]
  - `zsh/zshrc` settings for [dotzsh][8]
  - `vim/vimrc` settings for [dotvim][9]
  - and any dotfiles you enable in `dotsyncrc`

### terminal

dotphiles uses the [solarized][19] color theme
by default, install the colour scheme for your terminal.

vim-powerline requires patched fonts for the 'fancy fonts' options, you can
find links to them to install [here][27] and configure your terminal to use
one, Menlo works great.

### deploy

Experimental!

  - `deploy/osx` setup osx and install ports & brews (only use one)
  - `deploy/linux` setup linux and install packages
    - `packages/macports` add ports to be installed by `osx` (select one)
    - `packages/homebrew` add brews to be installed by `osx` (select one)
    - `packages/apt` add packagess to be installed by `linux` on apt based systems

### dotsync

See the documentation for [dotsync][7] for more information.

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
         ~/$DOTFILES/dotfile.d/$DOMAIN
         ~/$DOTFILES/dotfile

   And link the first one it finds instead of the standard dotfile.  The
   `localhost` dotfile will be excluded from your repo.

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

Copyright (c) 2012 Ben O'Hara <bohara@gmail.com>

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
[2]: https://github.com/dotphiles/dotphiles/contributors
[3]: https://github.com/dotphiles/dotphiles/issues
[4]: http://gun.io/blog/how-to-github-fork-branch-and-pull-request
[5]: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
[6]: https://help.github.com/articles/using-pull-requests
[7]: https://github.com/dotphiles/dotsync
[8]: https://github.com/dotphiles/dotzsh
[9]: https://github.com/dotphiles/dotvim
[10]: http://jeffkreeftmeijer.com/2010/why-arent-you-using-git-flow/
[11]: http://help.github.com/win-set-up-git/
[12]: http://rogerdudler.github.com/git-guide/
[13]: http://help.github.com/fork-a-repo/
[14]: http://help.github.com/send-pull-requests/
[15]: http://nvie.com/posts/a-successful-git-branching-model/
[16]: http://www.twitter.com/nvie
[17]: https://github.com/nvie/gitflow
[18]: https://github.com/nvie/gitflow/wiki/Installation
[19]: http://ethanschoonover.com/solarized
[20]: http://slinky.imukuppi.org/zenburnpage/
[21]: https://github.com/skwp/dotfiles
[22]: https://github.com/sorin-ionescu/prezto
[23]: https://github.com/robby-russell/oh-my-zsh
[24]: https://github.com/holman/dotfiles
[25]: https://github.com/mathiasbynens/dotfiles
[26]: http://vim.spf13.com
[27]: https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts

