" set foldmethod=expr
" set foldexpr=vimtex#fold#level(v:lnum)
" set foldtext=vimtex#fold#text()
" set fillchars=fold:\ 
" Hiding files
let g:netrw_list_hide = '.*\.swp$,.*\.aux$,.*\.bbl$,.*\.bbl-SAVE-ERROR$,.*\.bcf$,.*\.blg$,.*\.fdb_latexmk$,.*\.fls$,.*\.log$,.*\.out$,.*\.run.xml$,.*\.synctex.gz$' 
