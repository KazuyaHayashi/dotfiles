
""" filetype
" au! BufNewFile,BufRead *.mod     if getline(1) =~ '\<module\>' |   setf lprolog | else |   setf modsim3 | endif
au! BufNewFile,BufRead *.mod

augroup php_filetype
    au!
    au BufNewFile,BufRead *.mod,*.inc,*.cnf,*.edit,*.check,*.conf,*.view setf php
augroup END

set shiftwidth=2
set tabstop=2
set softtabstop=2
