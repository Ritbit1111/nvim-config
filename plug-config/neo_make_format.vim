" Maker
" let g:neomake_python_enabled_makers = ['flake8', 'pylint']
let g:neomake_python_enabled_makers = ['flake8']
call neomake#configure#automake('nrwi', 100)

" Formatter
let g:neoformat_enabled_python = ['black', 'autopep8', 'yapf', 'docformatter']

" Autoformat on save

" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END
