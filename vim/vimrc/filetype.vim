source ~/.vim/vimrc/filetype/python.vim
source ~/.vim/vimrc/filetype/shell.vim
source ~/.vim/vimrc/filetype/javascript.vim
source ~/.vim/vimrc/filetype/coffeescript.vim

if has("eval") && has("autocmd")
    "vim 5.8.9 on mingw donot know what is <SID>, so I avoid to use function
    "c/cpp
    fun! Abbrev_cpp()
        ia <buffer> cci const_iterator
        ia <buffer> ccl cla
        ia <buffer> cco const
        ia <buffer> cdb bug
        ia <buffer> cde throw
        ia <buffer> cdf /** file<CR><CR>/<Up>
        ia <buffer> cdg ingroup
        ia <buffer> cdn /** Namespace <namespace<CR><CR>/<Up>
        ia <buffer> cdp param
        ia <buffer> cdt test
        ia <buffer> cdx /**<CR><CR>/<Up>
        ia <buffer> cit iterator
        ia <buffer> cns Namespace ianamespace
        ia <buffer> cpr protected
        ia <buffer> cpu public
        ia <buffer> cpv private
        ia <buffer> csl std::list
        ia <buffer> csm std::map
        ia <buffer> css std::string
        ia <buffer> csv std::vector
        ia <buffer> cty typedef
        ia <buffer> cun using Namespace ianamespace
        ia <buffer> cvi virtual
        ia <buffer> #i #include
        ia <buffer> #d #define
    endfunction

    fun! Abbrev_java()
        ia <buffer> #i import
        ia <buffer> #p System.out.println
        ia <buffer> #m public static void main(String[] args)
    endfunction

    fun! Abbrev_python()
        ia <buffer> #i import
        ia <buffer> #p print
        ia <buffer> #m if __name__=="__main__":
    endfunction

    fun! Abbrev_aspvbs()
        ia <buffer> #r Response.Write
        ia <buffer> #q Request.QueryString
        ia <buffer> #f Request.Form
    endfunction

    fun! Abbrev_js()
        ia <buffer> #a if(!0){throw Error(callStackInfo());}
    endfunction

    augroup abbreviation
        au!
        au FileType javascript :call Abbrev_js()
        au FileType cpp,c :call Abbrev_cpp()
        au FileType java :call Abbrev_java()
        au FileType python :call Abbrev_python()
        au FileType aspvbs :call Abbrev_aspvbs()
    augroup END
endif

