" jedi vim : Used to move around in python files
" Most important for python programs
let g:jedi#goto_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>u"
let g:jedi#rename_command = "<leader>r"

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"
" let g:jedi#use_tabs_not_buffers = 1
" Go to python definition (Can go to even libraries .py files)

" Unassign some variables
let g:jedi#goto_assignments_command = ""
let g:jedi#goto_stubs_command = ""
let g:jedi#goto_definitions_command = ""
let g:jedi#completions_command = ""

" deoplete jedi : Python related autocompletion
let g:deoplete#sources#jedi#enable_typeinfo = 0
