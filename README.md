dotphiles
=========

A framework of dotfiles for the usual terminal apps and shells designed to be
cross platform and degrade for older machines

### Installation

Sign up for an account on [github][1] and fork the project

    git clone --recursive git@github.com:*username*/dotphiles.git ~/.dotfiles

Edit *dotsyncrc* and select which dotfiles to use

Then symlink then into place with

    ./.dotfiles/dotsync/bin/dotsync -L

*An existing ~/.dotfiles will be backed up into ~/.backup/dotfiles.old on init*

*Any existing files will be backed up into ~/.backup/dotfiles/*

Settings
========

### [dotsync](https://github.com/dotphiles/dotsync)

Add your dotfiles and machines to sync into *dotsyncrc*

### [dotzsh](https://github.com/dotphiles/dotzsh)

Add your own settings to *zshrc*, *zshenv*, *zlogin*, *zlogout* and *zprofile*

### [dotvim](https://github.com/dotphiles/dotvim)

Add your own settings to *vimrc*, start vim and run :BundleInstall

### git

Add your name, email and gpg keyid to *gitconfig*

### ssh

Add your known hosts to *ssh/config*

Terminal
========

dotphiles is set to use the solarized theme, so you need to install the
colors scheme and fonts for your terminal,

see the files in *~/.dotfiles/bootstrap*

Contribute
==========

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
=======

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

