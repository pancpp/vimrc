"""""""""""""""""""""""""""""""
" => NERDTree plugin
"""""""""""""""""""""""""""""""
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos = "left" "where NERD tree window is placed on the screen
"let NERDTreeWinSize = 31 "size of the NERD tree

"open and close the NERD_tree.vim separately
nmap <F8> :NERDTreeToggle<CR> 
"open and close the NERD_tree.vim separately
map <C-n> :NERDTreeToggle<CR>
"close the nerdtree if it is the only tab left in the window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

