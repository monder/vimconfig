execute pathogen#infect()

set nocompatible

set wrapscan

" Command line two lines high
set ch=2

" Visual bell
set vb

set backspace=2
set cpoptions=ces$
set laststatus=2
set mousehide
set guioptions=ac
set timeoutlen=500
set history=100

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" Start scrolling when we're 8 lines away from margins
set scrolloff=8

set virtualedit=all
set complete=.,w,b,t
set incsearch

" Keep undo history across sessions, by storing in file.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" The best theme ever
colorscheme xoria256
set synmaxcol=2048

" Tabs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Mouse scroll
set mouse=a

" Line numbers
set number

syntax on
filetype plugin indent on
let g:airline_section_z = '%3p%% :%3l:%3c:0x%B'

au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.iced set filetype=coffee
