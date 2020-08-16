" Setting leader key to Spacebar
let mapleader = "\<Space>"
" Save the init file and source it
au! BufWritePost $MYVIMRC source $MYVIMRC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set aw
set nu
set rnu
set hidden
set splitright
set splitbelow
set noshowmode
set termguicolors
set mouse=a
set encoding=utf-8
set inccommand=nosplit
set clipboard=unnamedplus
set completeopt-=PREVIEW
au BufNewFile,BufRead *.py
    \ set expandtab       |" replace tabs with spaces
    \ set autoindent      |" copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#label = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

