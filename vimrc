set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'wincent/Command-T'
Bundle 'AutoComplPop'
Bundle 'taglist.vim'
Bundle 'YankRing.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'tsaleh/vim-align'
Bundle 'mileszs/ack.vim'
Bundle 'austintaylor/vim-indentobject'
Bundle 'greplace.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'sjl/threesome.vim'
Bundle 'Indent-Guides'
Bundle 'tpope/vim-endwise'
Bundle 'Raimondi/delimitMate'
Bundle 'calendar.vim--Matsumoto'
Bundle 'chrisbra/NrrwRgn'
Bundle 'utl.vim'
Bundle 'hsitz/VimOrganizer'
Bundle 'sjl/gundo.vim'

" Ruby/Rails
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'apidock.vim'

" color themes
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-vividchalk'

" syntax support
Bundle 'vim-ruby/vim-ruby'
Bundle 'tsaleh/vim-tmux'
Bundle 'vitaly/vim-rcov'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'JSON.vim'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vitaly/vim-syntastic-coffee'
Bundle 'vim-scripts/jade.vim'
Bundle 'wavded/vim-stylus'
Bundle 'VimClojure'
Bundle 'bbommarito/vim-slim'

" Support and minor
Bundle 'kana/vim-textobj-user'
Bundle 'tpope/vim-repeat'
Bundle 'vitaly/vim-gitignore'
Bundle 'scrooloose/vim-space'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'

"Bundle 'ShowMarks'
"Bundle 'tpope/vim-unimpaired'
"Bundle 'reinh/vim-makegreen'

source ~/.vim/dotvim.vim
