""""""""""""""""""""""""""""""
" => Yank Ring
""""""""""""""""""""""""""""""
if use_plugins_i_donot_use
    map <leader>y :YRShow<cr>

    """"""""""""""""""""""""""""""
    " => File explorer
    """"""""""""""""""""""""""""""
    "Split vertically
    let g:explVertical=1

    "Window size
    let g:explWinSize=35

    let g:explSplitLeft=1
    let g:explSplitBelow=1

    "Hide some file
    let g:explHideFiles='^.,.*.class$,.*.swp$,.*.pyc$,.*.swo$,.DS_Store$'

    "Hide the help thing..
    let g:explDetailedHelp=0


    """"""""""""""""""""""""""""""
    " => Minibuffer
    """"""""""""""""""""""""""""""
    let g:miniBufExplModSelTarget = 1
    let g:miniBufExplorerMoreThanOne = 0
    let g:miniBufExplModSelTarget = 0
    let g:miniBufExplUseSingleClick = 1
    let g:miniBufExplMapWindowNavVim = 1
    let g:miniBufExplVSplit = 25
    let g:miniBufExplSplitBelow=1

    "WindowZ
    map <c-w><c-t> :WMToggle<cr>
    let g:bufExplorerSortBy = "name"

    """"""""""""""""""""""""""""""
    " => LaTeX Suite thing
    """"""""""""""""""""""""""""""
    "set grepprg=grep -r -s -n
    let g:Tex_DefaultTargetFormat="pdf"
    let g:Tex_ViewRule_pdf='xpdf'

    if has("autocmd")
        "Binding
        au BufRead *.tex map <silent><leader><space> :w!<cr> :silent! call Tex_RunLaTeX()<cr>

        "Auto complete some things ;)
        au BufRead *.tex ino <buffer> $i indent
        au BufRead *.tex ino <buffer> $* cdot
        au BufRead *.tex ino <buffer> $i item
        au BufRead *.tex ino <buffer> $m [<cr>]<esc>O
    endif

endif
