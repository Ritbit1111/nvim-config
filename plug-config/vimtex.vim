let g:vimtex_compiler_progname = 'nvr'
" call deoplete#custom#var('omni', 'input_patterns', {
"       \ 'tex': g:vimtex#re#deoplete
"       \})
let g:vimtex_compiler_latexmk_engines = {
        \ '_'                : '-pdf',
        \ 'pdflatex'         : '-pdf --shell-escape',
        \ 'dvipdfex'         : '-pdfdvi',
        \ 'lualatex'         : '-lualatex',
        \ 'xelatex'          : '-xelatex',
        \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
        \ 'context (luatex)' : '-pdf -pdflatex=context',
        \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
        \}
let g:vimtex_view_general_viewer = '/usr/bin/zathura'
" let g:vimtex_fold_enabled = 1
" let g:vimtex_fold_types = {
"       \ 'markers' : {'enabled': 0},
"       \ 'sections' : {'parse_levels': 1},
"       \}
let g:vimtex_format_enabled = 1
let g:vimtex_quickfix_autoclose_after_keystrokes = 3
let g:vimtex_imaps_enabled = 0
let g:vimtex_complete_img_use_tail = 1
let g:vimtex_view_method = 'zathura'
