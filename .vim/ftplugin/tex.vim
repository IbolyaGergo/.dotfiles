set foldmethod=expr
set foldexpr=vimtex#fold#level(v:lnum)
set foldtext=vimtex#fold#text()
set fillchars=fold:\ 

" To speed up folding
" use vimtex zx to add folds in demand
let g:vimtex_fold_manual = 1

set textwidth=9999

set spell
