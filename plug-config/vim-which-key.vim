nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>


" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=500

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

let g:which_key_map['a'] = [ '<C-^>'                       , 'Alternate file' ]
let g:which_key_map['b'] = [ ':Buffers'                    , 'Buffers List' ]
let g:which_key_map['o'] = [ ':Files'                      , 'Open files FZF .' ]
let g:which_key_map['O'] = [ ':Files!'                     , 'o + Full Screen' ]
let g:which_key_map['f'] = [ ':Files /home/riteshkr'       , 'Open files FZF $HOME' ]
let g:which_key_map['F'] = [ ':Files! /home/riteshkr'      , 'f + Full Screen' ]
let g:which_key_map['g'] = [ ':Rg'      		   , 'Grep FZF .' ]
let g:which_key_map['G'] = [ ':Rg!'      		   , 'g + Full Screen' ]
let g:which_key_map['m'] = [ ':Marks'                      , 'Marks list' ]
let g:which_key_map['n'] = [ ':bn'                    	   , 'Next Buffer' ]
let g:which_key_map['p'] = [ ':bp'                    	   , 'Prev Buffer' ]
let g:which_key_map['w'] = [ ':w'                    	   , 'Write To File' ]
let g:which_key_map['q'] = [ ':conf qa'                    , 'Quit all' ]
let g:which_key_map['x'] = [ ':conf bd'                    , 'Delete Buffer' ]

let g:which_key_map.e = {
	\'name' : '+edit',
	\'i'    : [':e $MYVIMRC', 'Open init.vim'],
	\'w'    : [':e ~/.config/nvim/plug-config/vim-which-key.vim', 'Open which key'],
	\'m'    : [':e ~/.config/nvim/mapping.vim', 'Open general mapping']
	\}
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'p' : [':FloatermNew python3'                            , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }

let g:which_key_map.d = {
      \ 'name' : '+todo' ,
      \ 'a' : [':CocCommand todolist.create'        , 'add'],
      \ 'u' : [':CocCommand todolist.upload'        , 'Upload to gist'],
      \ 'c' : [':CocCommand todolist.clear'         , 'Clear all todos'],
      \ 'd' : [':CocList todolist'                   , 'Open Todo'],
      \ }
call which_key#register('<Space>', "g:which_key_map")
