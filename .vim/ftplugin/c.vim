set foldmethod=marker

" clang-format
" Format the whole file
nnoremap <Leader>f :%!clang-format<CR>
" Format selected linter in Visual mode
vnoremap <Leader>f :!clang-format<CR>
" Optional: Format on save
" autocmd BufWritePre *.c,*.h :%!clang-format
