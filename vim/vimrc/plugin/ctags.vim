""""""""""""""""""""""""""""""
" => ctags
""""""""""""""""""""""""""""""
set tags=tags;
set autochdir
if has("win16") || has("win32")

else
	set tags+=~/.vim/tags/kernel.tags
endif

