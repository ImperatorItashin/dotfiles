" -----------------------------------------------------------------------
" 共通
" -----------------------------------------------------------------------


" echo "Reading .vimrc"

" if has('vim_starting')
" 	if &compatible
" 		echo "test1111"
" 		set nocompatible               " Be iMproved
" 	endif

set guifont=Migu_1M:h11:cSHIFTJIS

let GNUPACK="C:/app/gnupack_devel-13.06-2015.11.08"

set runtimepath+=~/vimfiles/plugin
" -----------------------------------------------------------------------
" NeoBundle
" -----------------------------------------------------------------------
	" Required:
	set runtimepath+=~/vimfiles/bundle/neobundle.vim/
"	set runtimepath+=~/vimfiles/itaCommand
"	set runtimepath+=~/vimfiles/qfixapp/
"	set runtimepath+=C:/app/gnupack_devel-11.00/home/vimfiles/qfixapp/
"	set runtimepath+=C:/app/gnupack_devel-11.00/app/cygwin/cygwin/bin/
" endif

" Required:
call neobundle#begin(expand('~/vimfiles/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
"
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
" NeoBundle 'surround.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neocomplete'
"NeoBundle 'Shougo/neocomplecache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
" Tree表示をする。
" NeoBundle 'scrooloose/nerdtree'
" Gitを便利に使う
NeoBundle 'tpope/vim-fugitive'
" インデントに色を付けて見やすくする
" NeoBundle 'nathanaelkane/vim-indent-guides'
"
" Visualモードで*を打つと検索してくれる。
NeoBundle 'bronson/vim-visual-star-search'

" ctrl-p
NeoBundle "ctrlpvim/ctrlp.vim"

" Ag
NeoBundle 'rking/ag.vim'

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
" let g:indent_guides_enable_on_vim_startup = 1

" -----------------------------------------------------------------------
" 共通
" -----------------------------------------------------------------------
" 互換性モードなし
set nocompatible

" vimの内部文字コードはS-JIS
" set encoding=cp932
" vimの内部文字コードはUTF-8
set encoding=utf-8

" ファイル読み込み時の文字コード
set fileencodings=iso-2022-jp,iso-2022-jp-2,utf-8,euc-jp,sjis,utf-16le,utf-16

" エラーが起きた時にベルを鳴らさない。
" set noerrorbells
" ビープ音を全て□表示に置き換える。
set visualbell
set viminfo=

" シェルアプリ
" set shell=C:\app\gnupack_devel-11.00\mintty.exe
" set shell=C:\WINDOWS\system32\cmd.exe
set shell=C:/app/gnupack_devel-13.06-2015.11.08/app/cygwin/cygwin/bin/bash
" set shell=C:/app/gnupack_devel-13.06-2015.11.08/startup_cygwin.exe





" 編集するファイルファイルの種類を自動判別し、それに応じた便利な設定やインデントが行われるようにする。
filetype plugin indent on
" 編集するファイルの種類に応じて適切なハイライトを行う。
syntax enable
syntax on

" .vimrcを編集しやすくする
nnoremap <Space>.	:<C-u>edit $MYVIMRC<CR>
" .vimrcを即座にリロードできるようにする
nnoremap <Space>s.	:<C-u>source $MYVIMRC<CR>

" '- 'を挿入する
" nnoremap <C-k>	I- <ESC>
" nnoremap <C-l>	A  <ESC>

" カレントディレクトリを開いているファイルのpathにする
set autochdir
"
" VimFilerをデフォルトのファイラにする。
" let g:vimfiler_as_default_explorer=1

" セーフモードを無効化する。
let g:vimfiler_safe_mode_by_default=0

" -----------------------------------------------------------------------
" ファイル
" -----------------------------------------------------------------------

" 内容が変更されたら自動的に再読み込み
set autoread

" swpファイルを作成しない。
set noswapfile

" -----------------------------------------------------------------------
" 選択
" -----------------------------------------------------------------------
" C-vの矩形選択で行末より後ろもカーソルを置ける。
set virtualedit=block



" -----------------------------------------------------------------------
" 表示
" -----------------------------------------------------------------------
"150カラムx50行で表示
set columns=150
set lines=50

hi Statement ctermfg=white
hi Comment   ctermfg=yellow
hi String ctermfg=green cterm=bold

"hi Constant ctermfg=yellow cterm=bold
"hi Character ctermfg=5
"hi String ctermfg=white cterm=bold
"hi Function term=bold ctermfg=LightBlue
"hi Number ctermfg=black
"hi Identifier ctermfg=black cterm=bold
"hi Statement ctermfg=white cterm=bold
"hi PreProc ctermfg=white cterm=bold
"hi Type ctermfg=LightBlue cterm=bold
"hi Special ctermfg=grey cterm=bold
"hi Underlined cterm=italic
"hi Ignore ctermfg=darkgray
"hi Error ctermfg=darkred ctermbg=black
"hi Todo ctermbg=darkred ctermfg=yellow


"改行コードの背景色は無し、描画色はダークグリーン
highligh NonText guibg=NONE guifg=DarkGreen
"スペシャルキー(改行コードなど)の背景色はなし、描画色はグレイ30
highligh SpecialKey guibg=NONE guifg=Gray30

" 括弧の対応をハイライト
set showmatch

set showtabline=2

" C言語スタイルのインデントを自動で入れる
set cindent

" 編集するファイルの種類に応じてハイライト表示を行う
syntax enable

" --------------------------------------
" カレントウインドウのカーソル行ハイライト表示する
" --------------------------------------
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

"------Look&Feel------

"EndOfLineは$で表示、タブは>.で表示、続きのない空白は_で表示
set listchars=eol:$,tab:>.,trail:_
"上記内容を表示
set list

" 全角空白をハイライト表示
scriptencoding utf-8

augroup highlightIdegraphicSpace
	autocmd!
	autocmd ColorScheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=Grey80
	autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

colorscheme koehler
" colorscheme murphy
" colorscheme pablo
" colorscheme torte
" colorscheme elflord


"検索結果のハイライト表示
set hlsearch

" ルーラ、行番号を表示
set ruler
set number

" コマンドラインの高さ
set cmdheight=1

" カーソルラインを表示する
set cursorline

" ウインドウタイトルを設定する
set title

"自動文字数カウント
augroup WordCount
    autocmd!
    autocmd BufWinEnter,InsertLeave,CursorHold * call WordCount('char')
augroup END
let s:WordCountStr = ''
let s:WordCountDict = {'word': 2, 'char': 3, 'byte': 4}
function! WordCount(...)
    if a:0 == 0
        return s:WordCountStr
    endif
    let cidx = 3
    silent! let cidx = s:WordCountDict[a:1]
    let s:WordCountStr = ''
    let s:saved_status = v:statusmsg
    exec "silent normal! g\<c-g>"
    if v:statusmsg !~ '^--'
        let str = ''
       silent! let str = split(v:statusmsg, ';')[cidx]
        let cur = str2nr(matchstr(str, '\d\+'))
        let end = str2nr(matchstr(str, '\d\+\s*$'))
        if a:1 == 'char'
            " ここで(改行コード数*改行コードサイズ)を'g<C-g>'の文字数から引く
            let cr = &ff == 'dos' ? 2 : 1
            let cur -= cr * (line('.') - 1)
            let end -= cr * line('$')
        endif
        let s:WordCountStr = printf('%d/%d', cur, end)
    endif
    let v:statusmsg = s:saved_status
    return s:WordCountStr
endfunction

"ステータスラインにコマンドを表示
set showcmd
"ステータスラインを常に表示
set laststatus=2
"変更のチェック表示
set statusline=%m
"ファイルナンバー表示
set statusline+=[%n]
"ホスト名表示
set statusline+=%{matchstr(hostname(),'\\w\\+')}@
"ファイル名表示
set statusline+=%<%F
"読み込み専用かどうか表示
set statusline+=%r
"ヘルプページなら[HELP]と表示
set statusline+=%h
"プレビューウインドウなら[Prevew]と表示
set statusline+=%w
"ファイルフォーマット表示
set statusline+=[%{&fileformat}]
"文字コード表示
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
"ファイルタイプ表示
set statusline+=%y
"ここからツールバー右側
set statusline+=%=
"skk.vimの状態
set statusline+=%{exists('*SkkGetModeStr')?SkkGetModeStr():''}
"文字バイト数/カラム番号
set statusline+=[%{col('.')-1}=ASCII=%B,HEX=%c]
"現在文字列/全体列表示
set statusline+=[C=%c/%{col('$')-1}]
"現在文字行/全体行表示
set statusline+=[L=%l/%L]
"現在のファイルの文字数をカウント
set statusline+=[WC=%{exists('*WordCount')?WordCount():[]}]
"現在行が全体行の何%目か表示
set statusline+=[%p%%]
"レジスタの中身を表示
"set statusline+=[RG=\"%{getreg()}\"]

" -----------------------------------------------------------------------
" 検索
" -----------------------------------------------------------------------
" 行末まで検索したら行頭に戻る
" set wrapscan
set nowrapscan

"インクリメンタル検索(キーワードの入力完了を待たずに、その都度検索が働く)
set incsearch

" 大文字小文字を区別しない
set ignorecase

" 大文字で検索されたら対象を大文字限定にする
set smartcase

" 全角を表す正規表現入力を簡単にする
" cnoremap <C-i>zk [^\x01-\x7E]

" -----------------------------------------------------------------------
" 編集
" -----------------------------------------------------------------------
"クリップボード共有
set clipboard=unnamed,autoselect

"バックスペースで色々削除
set backspace=start,eol,indent

" ターミナル上からの貼り付けを許可
" set paste


"------Format------
"自動インデント
set smartindent
set autoindent

" フォーマット揃えをコメント以外有効にする
set formatoptions-=c


" 行頭の余白内で Tab を打ち込むと、 'shiftwidth' の数だけインデントする。
set smarttab


"タブストップは4カラム
set tabstop=4
set shiftwidth=4
" set softtabstop=0
" set expandtab


" ------ キー設定 ------
"<ESC><ESC>でハイライトをOFFにする
nnoremap <ESC><ESC> :noh<CR>

" ------ Grep --------
" set grepprg=git\ grep\ --no-index\ -I\ --line-number
" set grepprg=grep\ -arnH\ %:p:h\
" set grepprg=grep\ -arnH\
" set grepformat=%f:$l:%m,%f:%l:%m,%f\ \ %l%m,%f
" set grepprg=grep\ -nh
" set grepprg=lgrep\ -n
" set grepprg=grep\ -nH
" set grepprg=C:/app/gnupack_devel-11.00/app/bin/grep\ -nH
" set grepprg=C:/app/gnupack_devel-11.00/app/bin/grep.exe

" 自動改行表示を行わない
set nowrap

" 横スクロールバーを表示する。
set guioptions+=b

" hide tool bar
set guioptions-=T

" nnoremap <C-g>g		:<C-u>!grep <C-r><C-w> -arnH echo(\%:p:h) \| cw
" nnoremap <C-g>g		:<C-u>!grep '<C-r><C-w>' -arnH --include=\"*.cpp\" . \| cw
" nnoremap <C-g>g		:<C-u>silent grep! -arnH '<C-r><C-w>' --include='*.cpp' expand("%")
" nnoremap <C-g>g		:<C-u>silent grep! -airnH '<C-r><C-w>' ---include='*.cpp' -include='*.h' .<Left><Left><Left><Left><Left><Left><Left><Left><Left>
" nnoremap <C-g><C-g>g	:<C-u>silent grep! -airnwH '<C-r><C-w>' --include=*.{cpp,h} .<S-Left><S-Left><Left><Left>
" nnoremap <C-g>g			:echo . :<C-u>silent grep! -airnwH '' --include=*.{cpp,h} .<S-Left><S-Left><Left><Left>

" nnoremap <C-g><C-g>v	:<C-u>vimgrep /<C-r><C-w>/ **\*.{cpp,h} <S-Left><Left>
" nnoremap <C-g>v			:<C-u>vimgrep // **\*.{cpp,h} <S-Left><left><left>
nnoremap <C-g>v			:<C-u>vimgrep 

" -----------------------------------------------------------------------
" キーマップ定義
" -----------------------------------------------------------------------
" Control+tabで次のバッファ
" Control+Shift+tabで前のバッファ
" nmap <C-tab> :tabn<CR>
" nmap <C-S-tab> :tabp<CR>

" helpを引きやすくする
nnoremap <C-h>	:<C-u>help<Space>

" カーソル下のキーワードを:helpで引けるようにする
nnoremap <C-h><C-h>	:<C-u>help<Space><C-r><C-w><CR>

" <C-x>で現在のファイルのパスを補完
cmap <C-x> <C-r>=expand('%:p:h')<CR>


" grep検索の実行後にQuickFix Listを表示する
" autocmd QuickfixCmdPost make,vimgrep,grep copen
autocmd QuickfixCmdPost make,*grep* cwindow

" ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}

set wildmenu

" ノーマルモードにおいて、Alter+Enterで改行挿入
nmap <A-CR> i<CR><ESC>

" NeoComplCacheを起動する。
let g:neocomplcache_enable_at_startup = 1

" --------------------------------------
" ビジュアルモードでのインデント変更を連続して行う
" --------------------------------------
" .コマンドで代用可能
" vnoremap < <gv
" vnoremap > >gv

" --------------------------------------
" エンコーディングを指定してファイルを開く
" --------------------------------------
command! Cp932 edit ++=cp932
command! Eucjp edit ++=euc-jp
command! Iso2022jp edit ++=iso-2022-jp
command! Utf edit ++=utf-8
"jisとSjisのリネーム
command! Jis Iso2022jp
command! Sjis Cp932

" ヤンクについてもDやCと同様の体系とする。
nnoremap Y y$

nnoremap ; :
nnoremap : ;

vnoremap ; :
vnoremap : ;

au BufRead,BufNewFile *.md set filetype=markdown

" 16進数はインクリメント可能、8進数はインクリメント不可能
set nrformats=hex

" let mygrepprg   = 'findstr'
" let mygrepprg = 'grep'
" let myjpgrepprg = 'agrep.vim'

" ●などの記号が半角幅になるのを防ぐ。 
set ambiwidth=double

" ファイルエンコーディング指定
" nnoremap <C-e>f :<C-u>edit ++enc=
" <c-e>は一行↑にスクロール
" <c-y>は一行↓にスクロール

" --------------------------------------
" 挿入系
" --------------------------------------
" 日付のみ。
" nnoremap <c-i>dd <ESC>a<C-r>=strftime("%Y/%m/%d %H:%M")<CR><ESC>
" ()付き日付のみ。
" nnoremap <c-i>db <ESC>a(<C-r>=strftime("%Y/%m/%d %H:%M")<CR>)<ESC>

" input : ==============================
" nnoremap <c-i>bd <ESC>30i=<ESC>

" input : ------------------------------
" nnoremap <c-i>bs <ESC>30i-<ESC>

" 先頭に '- 'をつける。
" nnoremap <c-i>-<Space> <ESC>I-<Space><ESC>
" 先頭に '* 'をつける。
" nnoremap <c-i>*<Space> <ESC>I*<Space><ESC>

" -------------------------------------
" 新しいウインドウを右に開く
" --------------------------------------
set splitright


" --------------------------------------
" Vimを複数起動しないで1つにまとめる。
" -------------------------------------
" if v:servername == 'GVIM1'
" 	let file = expand('%:p')
" 	bwipeout
" 	call remote_send('GVIM', '<ESC>:tabnew ' .file .'<CR>')
" 	call remote_foreground('GVIM')
" 	quit
" endif

" --------------------------------------
" ウインドウ操作のキーマップ
" -------------------------------------
nnoremap s <Nop>
" 下に移動
nnoremap sj <C-w>j
" 上に移動
nnoremap sk <C-w>k
" 右に移動
nnoremap sl <C-w>l
" 左に移動
nnoremap sh <C-w>h
" 次に移動
nnoremap sw <C-w>w
" ウインドウを下に移動
nnoremap sJ <C-w>J
" ウインドウを上に移動
nnoremap sK <C-w>K
" ウインドウを右に移動
nnoremap sL <C-w>L
" ウインドウを左に移動
nnoremap sH <C-w>H
" ウインドウを回転
nnoremap sr <C-w>r
" 次のタブ
nnoremap sn gt
" 前のタブ
nnoremap sp gT
" ウインドウの大きさをそろえる。
nnoremap s= <C-w>=
nnoremap sO <C-w>=
" ウインドウの縦横を最大化
nnoremap so <C-w>_<C-w>|
" ウインドウの高さ増減
nnoremap sdk <C-w>+
nnoremap sdj <C-w>-
" ウインドウの幅増減
nnoremap sdl <C-w><
nnoremap sdh <C-w>>

nnoremap sP :<C-u>bp<CR>
" 新規タブ
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
" 水平分割
nnoremap ss :<C-u>sp<CR>
" 垂直分割
nnoremap sv :<C-u>vs<CR>
" タブを閉じる。
nnoremap sc :<C-u>tabc<CR>

" ウインドウを閉じる。
nnoremap sq :<C-u>q<CR>
" バッファを閉じる。
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

" call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
" call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
" call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
" call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
" call submode#map('bufmove', 'n', '', '>', '<C-w>>')
" call submode#map('bufmove', 'n', '', '<', '<C-w><')
" call submode#map('bufmove', 'n', '', '+', '<C-w>+')
" call submode#map('bufmove', 'n', '', '-', '<C-w>-')

" gfで新しいタブで開く
nnoremap sgf <C-w>gF

" --------------------------------------
" 縦分割gf
" --------------------------------------
nnoremap gs :<c-u>vertical wincmd f<CR>

" 新しいタブで開く。
nnoremap gS <C-w>gf

" nnoremap gS <C-w>f<c-w>J

" モードラインを有効にする。
set modeline
" 3行目までをモードラインとして検索する
set modelines=3

" vim: foldmethod=marker
" vim: foldcolumn=3
" vim: foldlevel=0
"
" --------------------------------------
" QFixHowm用(メモ書き)
" --------------------------------------
" let howm_dir				= 'E:\office\ItaMemo'
" let howm_fileencoding		= 'utf-8'
" let howm_fileformat			= 'dos'
" " ,y で表示される予定・TODOパターン
" let QFixHowm_ListReminder_ScheExt = '[-@+!~.]'
" 
" let QFixHowm_HowmMode		= 0
" let QFixHowm_Title			= '#'
" let suffix					= 'mkd'
" let QFixHowm_UserFileType	= 'markdown'
" let QFixHowm_UserFileExt	= 'suffix'
" 
" let howm_filename			= '%Y/%m/%Y-%m-%d-%H%M%S.'.suffix

" --------------------------------------
" バッファ制御
" --------------------------------------
" バッファ一覧を表示してそのままバッファを選択できるようにする
" cnoremap <c-b> :ls<CR>:buf 

" --------------------------------------
" フォールディング
" --------------------------------------
nnoremap zF V%zf


" --------------------------------------
" Unite
" --------------------------------------
let g:unite_enbale_start_insert=1
let g:unijte_source_file_mru_limit=200

" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <Space><Space> [unite]

" unite.vim keymap
let g:unite_source_history_yank_enable =1
nnoremap <silent> [unite]f :<C-u>Unite<Space>file<CR>
nnoremap <silent> [unite]g :<C-u>Unite<Space>grep<CR>
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
" nnoremap <silent> [unite]b :<C-u>Unite<Space>bookmark<CR>
" nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
nnoremap <silent> [unite]h :<C-u>Unite<Space>history/yank<CR>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]c :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" nnoremap <silent> ,vr :UniteResume<CR>
" vinarise
let g:vinarise_enable_auto_detect = 1 
" unite-build map
" nnoremap <silent> ,vb :Unite build<CR>
" nnoremap <silent> ,vcb :Unite build:!<CR>
" nnoremap <silent> ,vch :UniteBuildClearHighlight<CR>

" let g:unite_source_grep_command = 'ag'
" let g:unite_source_grep_command = 'C:/app/gnupack_devel-11.00/app/bin/grep\ -nH'
" let g:unite_source_grep_default_opts = '--nocolor --nogroup'
" let g:unite_source_grep_max_candidates = 200
" let g:unite_source_grep_recursive_opt = ''
" unite-grepの便利キーマップ
" vnoremap /g y:Unite grep::-iRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>

" %:hは打ちにくいので%%でキーバインドさせときす。
" cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' : '%%'
"
nnoremap * *<c-o>
nnoremap g* g*<c-o>

" カーソル位置の単語をgrep検索
" nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif



" undoファイルを作らない。
set noundofile
" --------------------------------------
" 勝手な自動改行をOFF
" --------------------------------------
set textwidth=0
" デフォルトvimrc_exampleのtextwidth設定上書き
autocmd FileType text setlocal textwidth=0
inoremap <c-t> [<c-r>=strftime("%Y/%m/%d")<CR>]
" カーソルキー無効
noremap <Home> <nop>
noremap <End> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
inoremap <Home> <nop>
inoremap <End> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
vnoremap <Left> <nop>
vnoremap <Right> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>

nnoremap <C-g>f :echo cfi#format("%s", "No Function")<CR>

" <Space>cで前回のコマンドを繰り返す。
nnoremap <Space>c @:

let g:neosnippet#snippets_directory='~/vimfiles/bundle/neosnippet-snippets/neosnippets/'

" -------------------------------
" NeoComplete
" -------------------------------
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'



" --------------------------------------
" Neosnipppet
" --------------------------------------
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif



" --------------------------------------
" CtrlP
" --------------------------------------
" Prefix: s
" nnoremap s <Nop>
" nnoremap sa :<C-u>CtrlP<Space>
" nnoremap sb :<C-u>CtrlPBuffer<CR>
" nnoremap sd :<C-u>CtrlPDir<CR>
" nnoremap sf :<C-u>CtrlP<CR>
" nnoremap sl :<C-u>CtrlPLine<CR>
" nnoremap sm :<C-u>CtrlPMRUFiles<CR>
" nnoremap sq :<C-u>CtrlPQuickfix<CR>
" nnoremap ss :<C-u>CtrlPMixed<CR>
" nnoremap st :<C-u>CtrlPTag<CR>

" let g:ctrlp_map = '<Nop>'
" Guess vcs root dir
" let g:ctrlp_working_path_mode = 'ra'
" Open new file in current window
" let g:ctrlp_open_new_file = 'r'
" let g:ctrlp_extensions = ['tag', 'quickfix', 'dir', 'line', 'mixed']
" let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:18'

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
" ctrl-pとagを組み合わせる。
"let g:ctrlp_user_command = 'ag %s -l'


set transparency=222

" --------------------------------------
" 終了
" --------------------------------------
" echo "Reading .vimrc -> Finish!"


