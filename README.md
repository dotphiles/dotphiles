dotphiles
=========

A framework of dotfiles for the usual terminal apps and shells designed to be
cross platform and degrade for older machines

### Why would I want my dotfiles on GitHub?

  - **Backup**, **restore**, and **sync** the prefs and settings for your 
    toolbox. Your dotfiles might be the most important files on your machine.
  - **Learn** from the community. Discover new tools for your toolbox and new 
    tricks for the ones you already use.
  - **Share** what you've learned with the rest of us.


Installation
------------

  1. Sign up for an account on [github][1] and fork the project.

  2. Clone your fork.

        git clone --recursive git@github.com:*username*/dotphiles.git ~/.dotfiles

  3. Edit `dotsyncrc` and enable dotfiles to use.

  4. Setup your terminal and the dotfiles you want to use, see below.

  5. Run dotsync `./.dotfiles/dotsync/bin/dotsync -L`

  6. Start a new login shell.

Dotfiles
--------

  - `dotsyncrc` add your dotfiles and hosts for [dotsync](https://github.com/dotphiles/dotsync)
  - `zsh/*` add your settings for [dotzsh](https://github.com/dotphiles/dotzsh)
    - `zsh/zshrc`
    - `zsh/zshenv`
    - `zsh/zlogin`
    - `zsh/zlogout`
    - `zsh/zprofile`
  - `vim/*` add your settings for [dotvim](https://github.com/dotphiles/dotvim)
    - `vimrc` add your settings for vim and bundles to install
    - `gvimrc` add your settings for gvim 
  - `git/*` add your settings for [git](http://git-scm.com/)
    - `gitconfig` add your name, email and gpg keyid
  - `mercurial/*` add your settings for [mercurial](http://mercurial.selenic.com/)
    - `hgrc` add your name and email
  - `ssh/*` add your settings for [ssh](http://www.openssh.org/)
    - `config` add your hosts and settings
    - `authorized_keys` add your public keys

Terminal
--------

dotphiles uses the [solarized](http://ethanschoonover.com/solarized) color theme
by default, see the files below to install.

  - `deploy/*`
    - `terminal/colors` the default colour scheme is solarized, install 
      the terminal color scheme
    - `terminal/fonts` powerline for vim is set to use fancy fonts, install 
      the fonts 
    - `osx` is based on .osx but will also install ports/brews as below
        - `macports` add ports to `deploy/macports` to be installed by osx
        - `homebrew` add brews to `deploy/homebrew` to be installed by osx


Backups
-------

An existing ~/.dotfiles will be backed up into `~/.backup/dotfiles/` if found

Updating
--------

To keep your fork upto date with additions to the dotphiles repo, do the following

    cd ~/.dotfiles
    git remote add upstream https://github.com/dotphiles/dotphiles
    git fetch upstream
    git merge upstream/master

Contribute
----------

This project would not exist without all of its users and [contributors][2].

If you have ideas on how to make the configuration easier to maintain or
improve its performance, do not hesitate to fork and send pull requests.

### Issue Reporting

   - Check that the [issue][3] has not already been reported.
   - Check that the [issue][3] has not already been fixed in the latest code.
   - Open an [issue][3] with a clear title and description in grammatically correct,
     complete sentences.

### Pull Request

   - Read [how to properly contribute to open source projects on GitHub][4].
   - Use a topic branch to easily amend a pull request later, if necessary.
   - Write [good commit messages][5].
   - Squash commits on the topic branch before opening a pull request.
   - Use the same coding style and spacing.
   - Open a [pull request][6] that relates to but one subject with a clear
     title and description in gramatically correct, complete sentences.

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

