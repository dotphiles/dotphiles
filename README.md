dotphiles
=========


###New Machine
 1. Clone repo.
    git clone --recursive git@github.com:lonix/dotfiles.git ~/.dotfiles
 2. Edit `dotsyncrc` and add machine to list.
 3. Run dotsync `./.dotfiles/dotsync/bin/dotsync -L`
 4. Start a new login shell.


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

[2]: https://github.com/dotphiles/dotsync
[7]: https://github.com/dotphiles/dotphiles/graphs/contributors
