set foldmethod=marker

" clang-format
" Format the whole file
nnoremap <Leader>f :%!clang-format<CR>
" Format selected linter in Visual mode
vnoremap <Leader>f :!clang-format<CR>
" Optional: Format on save
" autocmd BufWritePre *.c,*.h :%!clang-format

" clang-tidy
" 1. Save the file (:w)
" 2. Run make lint-file for the current path
" 3. Open the Quickfix window (:copen) to see any warnings
nnoremap <Leader>l :w<CR>:make lint-file FILE=%<CR>:copen<CR>
