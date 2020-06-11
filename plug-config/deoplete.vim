"Launch deoplete at startup
let g:deoplete#enable_at_startup = 1

"Disable deoplete
" let g:deoplete#disable_auto_complete = 1
call deoplete#custom#option({
\ 'auto_complete_delay': 50,
\ 'smart_case': v:true,
\ })
