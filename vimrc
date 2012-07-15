"
" dotphiles : https://github.com/dotphiles/dotphiles
"
" Setup vim and load required plugins before dotvim
"
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

" Call dotvim
source ~/.vim/dotvim.vim

if has("user_commands")
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  Bundle 'gmarik/vundle'
  Bundle 'kien/ctrlp.vim'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'scrooloose/nerdtree'
  Bundle 'jistr/vim-nerdtree-tabs'
  Bundle 'altercation/vim-colors-solarized'
  Bundle 'tpope/vim-fugitive'
  Bundle 'vitaly/vim-gitignore'
  Bundle 'austintaylor/vim-indentobject'
  Bundle 'tpope/vim-markdown'
  Bundle 'Lokaltog/vim-powerline'
  Bundle 'tsaleh/vim-tmux'
  Bundle 'YankRing.vim'
  Bundle 'Indent-Guides'
  if v:version > 700
    Bundle 'Shougo/neocomplcache'
  endif
  " Add extra bundles here...

endif

" Customize to your needs...

