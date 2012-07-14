" dotphiles : https://github.com/dotphiles/dotphiles
"
" Setup vim and load required plugins before dotvim
"
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("user_commands")
  set nocompatible
  filetype off
  call pathogen#infect() 
endif

" Call dotvim
source ~/.vim/dotvim.vim

