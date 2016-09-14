call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/xoria256.vim'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'bling/vim-airline'
Plug 'kchmck/vim-coffee-script'
Plug 'int3/vim-extradite'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'digitaltoad/vim-jade'
Plug 'groenewege/vim-less'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shutnik/jshint2.vim'
Plug 'xsbeats/vim-blade'
Plug 'Yggdroot/indentLine'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'dkprice/vim-easygrep'
Plug 'mileszs/ack.vim'
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go'
Plug 'cpbills/vim-yaml'
Plug 'mhinz/vim-startify'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/syntastic'
Plug 'Shougo/neocomplete.vim'
Plug 'elzr/vim-json'
Plug 'hashivim/vim-terraform'
call plug#end()

"execute pathogen#infect()

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
let g:vim_json_syntax_conceal = 0
let g:jsx_ext_required = 0

au BufRead,BufNewFile *.iced set filetype=coffee
au BufRead,BufNewFile *.blade set filetype=jade
set exrc
set secure

