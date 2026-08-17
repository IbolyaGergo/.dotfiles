set path=src/**,test/**,scripts/**,tmp/**
set foldmethod=marker

" Format the whole file while preserving cursor position
nnoremap <Leader>f :let save_view = winsaveview()<CR>:%!ruff format --stdin-filename % -q -<CR>:call winrestview(save_view)<CR>
" Optional: Format on save
" augroup RuffFormat
"     autocmd!
"     autocmd BufWritePre *.py let save_view = winsaveview() | silent! %!ruff format --stdin-filename % -q - | call winrestview(save_view)
" augroup END

" Linting
" 1. Save the file (:w)
" 2. Run make lint-file for the current path
" 3. Open the Quickfix window (:copen) to see any warnings
nnoremap <Leader>l :w<CR>:make lint-file FILE=%<CR>:copen<CR>
