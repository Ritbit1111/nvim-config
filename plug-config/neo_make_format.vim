" Maker

let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_echo_current_error = 1
let g:neomake_virtualtext_current_error = 0
let g:neomake_virtualtext_prefix="                                       ❯"
" call neomake#configure#automake('nrwi', 100)

function! MyOnBattery()
  if has('macunix')
    return match(system('pmset -g batt'), "Now drawing from 'Battery Power'") != -1
  elseif has('unix')
    return readfile('/sys/class/power_supply/AC/online') == ['0']
  endif
  return 0
endfunction

if MyOnBattery()
  call neomake#configure#automake('w')
else
  call neomake#configure#automake('nrwi', 1000)
endif
" let g:neomake_python_enabled_makers = ['flake8', 'pylint']
let g:neomake_python_enabled_makers = ['flake8']
call neomake#configure#automake('nrwi', 100)

" Formatter
" let g:neoformat_enabled_python = ['black', 'autopep8', 'yapf', 'docformatter']

" Autoformat on save

" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END
