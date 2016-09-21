""""""""""""""""""""""""""""""
" => tag list (ctags)
""""""""""""""""""""""""""""""
if has("win16") || ("win32")             "set the position of command ctags
	let Tlist_Ctags_Cmd = 'ctags'
else
	let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif

"map <leader>t :Tlist<cr>
map <F3> :Tlist<cr>

let Tlist_Show_One_File = 1        "do not display multiple tag windows, only that for current source file is displayed
let Tlist_Exit_OnlyWindow = 1      "if taglist is the last window, quit vim
let Tlist_Use_Right_Window = 1     "display taglist as the right-most window
let Tlist_File_Fold_Auto_Close=1   "fold the tag list of source files those not been edited
let Tlist_Auto_Open=0              "auto start taglist

"let Tlist_Ctags_Cmd = "/sw/bin/ctags-exuberant"
"let Tlist_Sort_Type = "name"
"let Tlist_Show_Menu = 1

