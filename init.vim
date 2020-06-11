source ~/.config/nvim/general.vim
source ~/.config/nvim/abbreviations.vim
source ~/.config/nvim/vim-plug/plugins.vim

source ~/.config/nvim/plug-config/fzf.vim
" source ~/.config/nvim/plug-config/jedi.vim
" source ~/.config/nvim/plug-config/deoplete.vim
source ~/.config/nvim/plug-config/coc.vim
source ~/.config/nvim/plug-config/neo_make_format.vim
source ~/.config/nvim/plug-config/quick_scope.vim
source ~/.config/nvim/plug-config/colorizer.vim
source ~/.config/nvim/plug-config/limelight_goyo.vim
source ~/.config/nvim/plug-config/vim_hardtime.vim

source ~/.config/nvim/themes/airline.vim
source ~/.config/nvim/themes/conoline.vim
source ~/.config/nvim/themes/colorscheme_set.vim

source ~/.config/nvim/plug-config/vim-which-key.vim
source ~/.config/nvim/mapping.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimtex_compiler_progname = 'nvr'
" call deoplete#custom#var('omni', 'input_patterns', {
"       \ 'tex': g:vimtex#re#deoplete
"       \})
let g:vimtex_view_general_viewer = '/usr/bin/zathura'

let maplocalleader = ","
" let g:vimtex_view_general_options
"     \ = '-reuse-instance -forward-search @tex @line @pdf'
" let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:UltiSnipsExpandTrigger="<localleader><cr>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

nnoremap <expr> j (v:count > 4 ? "m'" . v:count . 'j' : 'gj')
nnoremap <expr> k (v:count > 4 ? "m'" . v:count . 'k' : 'gk')
