execute pathogen#infect()
filetype plugin indent on

set nocompatible

set backspace=indent,eol,start

set number

set ruler

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

set ignorecase


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

map <C-n> :NERDTreeToggle<CR>
nmap  <silent>  <Ck>  <Plug>（ale_previous_wrap）
nmap  <silent>  <Cj>  <Plug>（ale_next_wrap）

filetype plugin indent on
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2     " search namespaces in the current buffer   and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteScope = 1    " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

set tags+=~/.vim/tags/cpp_src/tags

"indentLine
let g:indent_guides_enable_on_vim_startup = 1

"ale


au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

colorscheme cpp
"colorscheme onedark
"colorscheme zmy_one


"YCM
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim  
call vundle#begin()  
Plugin 'gmarik/Vundle.vim'  
Plugin 'Valloric/YouCompleteMe'  
call vundle#end()  
filetype plugin indent on

let g:ycm_global_ycm_extra_conf = '/home/zmy/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'  
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全  
let g:ycm_show_diagnostics_ui = 1
let g:ycm_confirm_extra_conf=0  " 打开vim时不再询问是否加载ycm_extra_conf.py配置  
inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<CR>" 
"回车即选中当前项  
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228) '
