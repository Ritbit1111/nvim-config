call plug#begin('~/.local/share/nvim/plugged')

"Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Autocompletion python
Plug 'deoplete-plugins/deoplete-jedi'
" Not using this for Autocompletion bit for goto definition
Plug 'davidhalter/jedi-vim'

" For highlighting in python
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"Linter and maker
Plug 'neomake/neomake'
Plug 'sbdchd/neoformat'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Start screen
Plug 'mhinz/vim-startify'
" Like tagbar
Plug 'liuchengxu/vista.vim'

Plug 'lervag/vimtex'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
" Repeat stuff with regular .
Plug 'tpope/vim-repeat'
" Surround : yank surrounding ysiw(, delete surrounding : dsiw
Plug 'tpope/vim-surround'
" Generates pair of (), '' etc
Plug 'jiangmiao/auto-pairs'
" Commenting using gc<motion>
Plug 'vim-scripts/tComment'
" Plug 'tpope/vim-commentary'
" Highlight when copy, for visual cue
Plug 'machakann/vim-highlightedyank'
"Shows Key bindings
Plug 'liuchengxu/vim-which-key'

Plug 'norcalli/nvim-colorizer.lua'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'takac/vim-hardtime'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Movements
" To move around in python file (go to def: 'leader' d, see doc : 'K')
Plug 'unblevable/quick-scope'
Plug 'justinmk/vim-sneak'

" Themes
Plug 'yuttie/comfortable-motion.vim'
Plug 'gilgigilgil/anderson.vim'
Plug 'junegunn/vim-emoji'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'christianchiarulli/onedark.vim'
Plug 'kaicataldo/material.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasiser/vim-code-dark'
Plug 'miyakogi/conoline.vim'

call plug#end()
