"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Insert mode Abbreviations

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Emojis
iabbrev feild field
iabbrev :skull: 💀
iabbrev :heart: ❤️
iabbrev :zip: 🤐
iabbrev :sleep: 😴
iabbrev :blown: 🤯
iabbrev :blown: 😠
iabbrev :danger: ☠️
iabbrev :namaste: 🙏

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command line mode Abbreviations

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To save a file, no need to worry of entering W now (command mode no
" remapping abbreviation)
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev Wq wq

autocmd FileType tex iabbrev bb \textbf{}<Esc>T{i
autocmd FileType tex iabbrev isc I_{sc}
autocmd FileType tex iabbrev voc V_{oc}
autocmd FileType tex iabbrev vmp V_{mp}
autocmd FileType tex iabbrev imp I_{mp}
autocmd FileType tex iabbrev rsh R_{sh}
