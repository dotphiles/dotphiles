dotphiles
=========

A framework of dotfiles for the usual terminal apps and shells designed to work
across multiple platforms and degrade for older versions of software or O/S.

  - **Backup**, **restore**, and **sync** the prefs and settings for your toolbox.
    Your dotfiles might be the most important files on your machine.
  - **Learn** from the community. Discover new tools for your toolbox and new
    tricks for the ones you already use.
  - **Share** what you've learned with the rest of us.

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

### Dotfiles

These are the minimum files you'll need to edit

  - `dotsyncrc` settings for [dotsync][7]
  - `zsh/zshrc` settings for [dotzsh][8]
  - `vim/vimrc` settings for [dotvim][9]
  - `git/gitconfig` add your name, email and gpg keyid
  - `ssh/authorized_keys` add your public ssh key
  - `ssh/config` add your settings and hosts

### Terminal

dotphiles uses the [solarized][19] color theme by default, see the files
below to install, [zenburn][20] *should* also work but you'll needs to
changes settings throughout currently

  - `deploy/terminal/colors` colour schemes for various terminals
  - `deploy/terminal/fonts` fancy fonts, for vim-powerline, I'm using Menlo

Optional, tweak OSXs settings

  - `deploy/osx` is based on .osx but will also install ports/brews
    - `macports` add ports to be installed by `osx`
    - `homebrew` add brews to be installed by `osx`

### Dotsync

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

  - Usage

    Dotsync can be used to link your dotfiles into place, with it in the path..

    - `dotsync -L` symlink dotfiles into place
    - `dotsync -U` update from github
    - `dotsync -I -H hostname` initialise *hostname* with the set of dotfiles

  - Backups

    Any existing ~/.dotfiles will be backed up into `~/.backup/dotfiles/` if found

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

Contribute
----------

This project would not exist without all of its users and [contributors][2].

Lots of ideas and code stolen from around the interwebs such as [skwp/dotfiles][21],
[sorin-ionescu/oh-myzsh][22], [robby-russell/oh-my-myzsh][23], [holman/dotfiles][24],
[mathiasbynens/dotfiles][25], [spf13][26] and numerous other snippets of code copied
and pasted over the years.

If you have ideas on how to make the configuration easier to maintain or
improve its performance, do not hesitate to fork and send pull requests.

If you want to contribute to the project, check out the list of open [issues][3]

You can:

 - raise an issue
 - suggest a feature

If you would like to contribute code to the project:

  - A bit of background reading:
    - [Setting up Git for Windows and connecting to GitHub][11]
    - [The Simple Guide to Git][12]
    - [How to GitHub: Fork, Branch, Track, Squash and Pull Request][4]

  1. [Fork the repository][13]
  2. Create a feature branch to easily amend a pull request later, if necessary.
  3. Make some changes to the code base, write [good commit messages][5].
  4. Squash commits on the topic branch before opening a pull request.
  5. Open a [pull request][14] that relates to but one subject with a clear
     title and description in gramatically correct, complete sentences.

### Git Flow

We use the Git Flow branching model, [first described][15] by [nvie][16],
so dotphiles's `master` branch moves on only at specific points, when we're
really sure we want to promote something to production.

**Use of Git Flow is not required for contributing to dotphiles**, particularly
if you're submitting a bug-fix or small feature.  Its use is recommended for
larger changes where `develop` might move on whilst you're completing your work.

#### Configuring Git Flow

There is a set of [helper scripts][17] that will work on both Unix-based
operating systems and Windows.  Follow the appropriate 
[installation instructions][18] for your operating system, and configure your
working copy repository for use with Git Flow by typing `git flow init`.
Accept all the default options to the questions that it asks you.

#### Using Git Flow

Pick a feature or bug to work on and create a new branch for that work by
typing `git flow feature start <featurename>`.  This will create you a new
*feature branch* for your work called `feature/<featurename>`, and you can use
git as usual from this point.

Once your feature is finished, type `git flow feature publish <featurename>`.
This will copy the *feature branch* to your `origin` repository on GitHub and
you will then be able to submit a pull request to have it merged into dotphiles
own `develop` branch.

**Note: do not use `git flow feature finish <featurename>`!**

This will automatically merge your *feature branch* back into `develop` and
delete the *feature branch*, making it harder for you to submit your pull
request.

If you wish to update your published feature branch after the initial publish,
use a regular `git push origin feature/<featurename>`.  This will also update
your pull request if you have one open for that branch.

If you find dotphiles `develop` branch has moved on, and you need/want to take
advantage of the changes made there, you can update your feature branch as
follows:

  1. Ensure you have a remote configured for the upstream repository.

       git remote add upstream git://github.com/dotphiles/dotphiles.git

  2. Update your local repository with the upstream refs.

        git pull upstream develop:develop`

  3. Rebase your feature branch on top of the new `develop`.

        git flow feature rebase <featurename>

There is a lot of help available for Git Flow, which can be accessed by typing
`git flow feature help`.

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
[22]: https://github.com/sorin-ionescu/oh-my-zsh
[23]: https://github.com/robby-russell/oh-my-zsh
[24]: https://github.com/holman/dotfiles
[25]: https://github.com/mathiasbynens/dotfiles
[26]: http://vim.spf13.com

