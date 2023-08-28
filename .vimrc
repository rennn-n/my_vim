" ------------ 文字コードなど
" Vim内部で使う文字コード
set encoding=utf-8

" このファイルの文字コード
scriptencoding utf-8

" ファイルを開くときの文字コードの候補
set fileencodings=utf-8,cp932,sjis,utf-16le

" ファイルを開くときの改行コード
set fileformats=unix,dos

" ------------ ファイルタイプ
" ファイルタイプを検出して、それに応じて構文ハイライト
syntax enable
filetype plugin indent on


" ------------ 配色
set t_Co=256
set background=dark
colorscheme slate

" ------------ 概観
" ステータスライン(2: 常に表示)
set laststatus=2

" カーソル位置を表示
set ruler

" モードを表示
set showmode

" 入力途中の呪文を表示
set showcmd

" 行番号を表示
set number

" コマンドラインモードの補完機能をリッチに
set wildmenu

" 不可視文字の可視化
set list listchars=tab:»\ ,eol:¬,trail:∙


" ------------ インデント
" デフォルトで4
" ruby, clojure, markdownなら2
" タブはスペースに展開
set shiftwidth=0 softtabstop=0 tabstop=4 expandtab
augroup vimrc_tab
    autocmd!
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType clojure setlocal tabstop=2
    autocmd FileType markdown setlocal tabstop=2
augroup END
let g:vim_indent_cont=8

" ------------ Vimが自動的に作るファイル
" アンドゥ履歴ファイルを作らない
set noundofile
" バックアップファイルを作る
set backup
" Swapファイル(自動保存ファイル)を作らない
set noswapfile
" バックアップファイルの置き場
if ( has('win32') || has('win64') )
    set backupdir=$TEMP
else
    set backupdir=/tmp
endif

" ------------ その他のオプション
" 未保存のバッファが隠れるのを許す
set hidden

" 挿入モード時のIME制御(0: IME OFF)
set iminsert=0

" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
