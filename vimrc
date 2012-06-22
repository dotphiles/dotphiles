"
" dotphiles : https://github.com/dotphiles/dotvim
"
" Setup vim and load required plugins before dotvim
"

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" General
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'wincent/Command-T'
Bundle 'YankRing.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
"Bundle 'tsaleh/vim-align'
"Bundle 'mileszs/ack.vim'
"Bundle 'austintaylor/vim-indentobject'
"Bundle 'greplace.vim'
"Bundle 'sjl/threesome.vim'
"Bundle 'tpope/vim-endwise'
"Bundle 'Raimondi/delimitMate'
"Bundle 'calendar.vim--Matsumoto'
"Bundle 'chrisbra/NrrwRgn'
"Bundle 'utl.vim'
"Bundle 'hsitz/VimOrganizer'
Bundle 'kien/ctrlp.vim.git'

" requires at least vim 7.3
if v:version >= '703'
  if has('python')
    Bundle 'gundo.vim'
  endif
  Bundle 'Lokaltog/vim-powerline'
  Bundle 'VimClojure'
  Bundle 'AutoComplPop'
  Bundle 'msanders/snipmate.vim'
  Bundle 'syntastic'
  Bundle 'Indent-Guides'
endif

if version > 600
  if executable('ctags')
  """Bundle 'taglist.vim'
  endif
endif

" Ruby/Rails
"Bundle 'tpope/vim-rails'
"Bundle 'tpope/vim-bundler'
"Bundle 'tpope/vim-rake'
"Bundle 'nelstrom/vim-textobj-rubyblock'
"Bundle 'ecomba/vim-ruby-refactoring'
"Bundle 'apidock.vim'

" color themes
Bundle 'altercation/vim-colors-solarized'
"Bundle 'tpope/vim-vividchalk'

" syntax support
"Bundle 'vim-ruby/vim-ruby'
"""Bundle 'tsaleh/vim-tmux'
"Bundle 'vitaly/vim-rcov'
"""Bundle 'Puppet-Syntax-Highlighting'
"Bundle 'JSON.vim'
"Bundle 'tpope/vim-cucumber'
"Bundle 'tpope/vim-haml'
"""Bundle 'tpope/vim-markdown'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'vitaly/vim-syntastic-coffee'
"Bundle 'vim-scripts/jade.vim'
"Bundle 'wavded/vim-stylus'
"Bundle 'bbommarito/vim-slim'

" Support and minor
"Bundle 'kana/vim-textobj-user'
"Bundle 'tpope/vim-repeat'
"Bundle 'vitaly/vim-gitignore'
"Bundle 'scrooloose/vim-space'
"Bundle 'mattn/gist-vim'
"Bundle 'mattn/webapi-vim'

"Bundle 'ShowMarks'
"Bundle 'tpope/vim-unimpaired'
"Bundle 'reinh/vim-makegreen'

" Call dotvim 
source ~/.vim/dotvim.vim
