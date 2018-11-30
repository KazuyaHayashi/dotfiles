"" tagbar 

if has("mac")
    let g:tagbar_ctags_bin = "/usr/local/Cellar/ctags/5.8_1/bin/ctags"
endif

let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

nmap <Leader>t :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
\}
