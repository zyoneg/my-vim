execute pathogen#infect()
filetype plugin indent on

set nocompatible

set backspace=indent,eol,start

set number

set ruler
set nu

"换行
set nowrap


set showcmd

set history=1000

"突出现实当前行列
set cursorline
set cursorcolumn

set showmatch

set autoindent
set cindent

syntax enable
syntax on

" 忽略大小写
"set ignorecase

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

set encoding=utf-8

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set ff=unix

filetype on
filetype indent on

set wildmenu
set completeopt-=preview

set hlsearch

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

map q <Nop>

inoremap jk <esc>:w<cr>

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
