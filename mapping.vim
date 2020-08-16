" Toggle collection : Starts with alt
" Neomake 		: c (clean)
" Mouse 		: m
" quickscope 		: q
" auto pair  		: p
" limelight 		: i
" Goyo 			: g
" Hardtime 		: h


" Important Leader keys are :
" Grep (FZF)		: g
" Files (FZF)		: o
" Buffer (FZF)		: b
" Alternate Buffer 	: a
" Next Function		: f (Python)
" Format file (yapf)	: f (Python)
" Quit all !		: q


"""""""""""""""""""""""""""""""""""""""""""""""
" Mouse setting
function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
        " disable mouse
        set mouse=
    else
        " enable mouse everywhere
        set mouse=a
    endif
endfunc

" I tried to make a function but unsuccessful

nnoremap <expr> j (v:count > 4 ? "m'" . v:count . 'j' : 'gj')
nnoremap <expr> k (v:count > 4 ? "m'" . v:count . 'k' : 'gk')

nnoremap <silent> <A-m> :call ToggleMouse()<CR>
nnoremap <silent> <esc><esc> :silent! nohls<cr>

""""""""""""""""""""""""""""""""""""""""""""""""
" Find and replace
" Replace the inner word under the cursor
nnoremap <C-h> :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
" Generic Replace the visual selection
vnoremap <C-h> y :%s/<C-r>"//gc<Left><Left><Left>

""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal Maps
tnoremap <Esc> <C-\><C-n>
tnoremap <Esc><Esc> <Esc>
tnoremap <A-l> <C-\><C-n> <C-w>l
tnoremap <A-k> <C-\><C-n> <C-w>k
tnoremap <A-j> <C-\><C-n> <C-w>j
tnoremap <A-h> <C-\><C-n> <C-w>h

" Open terminal in split
nnoremap <A-t> :10split <bar> term<CR>i
""""""""""""""""""""""""""""""""""""""""""""""""
" Split window opens on the right and bottom
nnoremap <A-l> <C-w>l
nnoremap <A-k> <C-w>k
nnoremap <A-j> <C-w>j
nnoremap <A-h> <C-w>h
""""""""""""""""""""""""""""""""""""""""""""""""
" Inside visual mode surround thing
" `< and `> takes you to end and start of the visual selection (after you exit
" visual mode)
" Try using surrounding plugin first
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
vnoremap <leader>[ <esc>`<i[<esc>`>la]<esc>
vnoremap <leader>] <esc>`<i[<esc>`>la]<esc>
vnoremap <leader>{ <esc>`<i{<esc>`>la}<esc>
vnoremap <leader>} <esc>`<i{<esc>`>la}<esc>
vnoremap <leader>9 <esc>`<i(<esc>`>la)<esc>
vnoremap <leader>0 <esc>`<i(<esc>`>la)<esc>
autocmd FileType tex iabbrev :m $$<Esc>i


" Plugin mappings

"  FZF

" Neomake and format
nnoremap <A-c> :NeomakeToggleBuffer<CR> :NeomakeClean<CR>
" map <A-c> call ToggleNeomake()
" nnoremap <leader>p :Neoformat<CR>

"Quick scope toggle
" Note that you must use nmap/xmap instead of their non-recursive versions (nnoremap/xnoremap).
nmap <M-q> <plug>(QuickScopeToggle)
xmap <M-q> <plug>(QuickScopeToggle)

map <A-i> :Limelight!!<CR>
map <A-g> :Goyo<CR>
" nmap <C-s> <Plug>MarkdownPreview
" nmap <M-s> <Plug>MarkdownPreviewStop
let g:mkdp_markdown_css='/home/riteshkr/.local/lib/github-markdown.css'
nmap <leader>c <Plug>MarkdownPreviewToggle
"Use tab to move down and shift tab to move up the list for autocompletion
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" inoremap <expr><S-Tab> pumvisible() ? "\<c-p>" : "\<S-tab>"
