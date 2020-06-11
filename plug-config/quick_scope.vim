" Trigger a highlight in the appropriate direction when pressing these keys:
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
augroup qs_colors
  autocmd!
	highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
	highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=81 cterm=underline
augroup end


let g:qs_buftype_blacklist = ['terminal', 'nofile']
let g:qs_max_chars=150
