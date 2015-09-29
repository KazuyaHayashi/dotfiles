" display setting
syntax on
set title
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r\ %{strftime('%c')}%=<%l/%L:%p%%>
set laststatus=2
set cmdheight=2
set showcmd

" editer action
set autoread
"" vimrc reload and edit
nnoremap <silent> <C-r>s :source $HOME/.vimrc<Enter>
nnoremap <silent> <C-r>e :tabnew $HOME/.vimrc<Enter>

"" Open new tab to jump tag target
nnoremap <C-]> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>
" スクリーンベルを無効化
set t_vb=
set novisualbell
set nowritebackup
set nobackup
set noswapfile
" 対応括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>
" バックスペースでなんでも消せるようにする
set backspace=indent,eol,start
" tab
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set expandtab
" menu select
set wildmode=longest,list
" encoding
set fileencodings=utf-8,iso-2022-jp,sjis,euc-jp
set encoding=utf-8
" search
set ignorecase
set smartcase
set wrapscan
set hlsearch

set infercase           " 補完時に大文字小文字を区別しない
set showmatch           " 対応する括弧などをハイライト表示する
set matchtime=3         " 対応括弧のハイライト表示を3秒にする
set hidden              " バッファを閉じる代わりに隠す（Undo履歴を残すため）

filetype on
au BufNewFile,BufRead *.mod,*.inc,*.cnf setf php

