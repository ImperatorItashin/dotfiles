" -----------------------------------------------------------------------
" ����
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
" Tree�\��������B
" NeoBundle 'scrooloose/nerdtree'
" Git��֗��Ɏg��
NeoBundle 'tpope/vim-fugitive'
" �C���f���g�ɐF��t���Č��₷������
" NeoBundle 'nathanaelkane/vim-indent-guides'
"
" Visual���[�h��*��łƌ������Ă����B
NeoBundle 'bronson/vim-visual-star-search'

" ctrl-p
NeoBundle "ctrlpvim/ctrlp.vim"

" Ag
NeoBundle 'rking/ag.vim'

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" vim�𗧂��グ���Ƃ��ɁA�����I��vim-indent-guides���I���ɂ���
" let g:indent_guides_enable_on_vim_startup = 1

" -----------------------------------------------------------------------
" ����
" -----------------------------------------------------------------------
" �݊������[�h�Ȃ�
set nocompatible

" vim�̓��������R�[�h��S-JIS
" set encoding=cp932
" vim�̓��������R�[�h��UTF-8
set encoding=utf-8

" �t�@�C���ǂݍ��ݎ��̕����R�[�h
set fileencodings=iso-2022-jp,iso-2022-jp-2,utf-8,euc-jp,sjis,utf-16le,utf-16

" �G���[���N�������Ƀx����炳�Ȃ��B
" set noerrorbells
" �r�[�v����S�ā��\���ɒu��������B
set visualbell
set viminfo=

" �V�F���A�v��
" set shell=C:\app\gnupack_devel-11.00\mintty.exe
" set shell=C:\WINDOWS\system32\cmd.exe
set shell=C:/app/gnupack_devel-13.06-2015.11.08/app/cygwin/cygwin/bin/bash
" set shell=C:/app/gnupack_devel-13.06-2015.11.08/startup_cygwin.exe





" �ҏW����t�@�C���t�@�C���̎�ނ��������ʂ��A����ɉ������֗��Ȑݒ��C���f���g���s����悤�ɂ���B
filetype plugin indent on
" �ҏW����t�@�C���̎�ނɉ����ēK�؂ȃn�C���C�g���s���B
syntax enable
syntax on

" .vimrc��ҏW���₷������
nnoremap <Space>.	:<C-u>edit $MYVIMRC<CR>
" .vimrc�𑦍��Ƀ����[�h�ł���悤�ɂ���
nnoremap <Space>s.	:<C-u>source $MYVIMRC<CR>

" '- '��}������
" nnoremap <C-k>	I- <ESC>
" nnoremap <C-l>	A  <ESC>

" �J�����g�f�B���N�g�����J���Ă���t�@�C����path�ɂ���
set autochdir
"
" VimFiler���f�t�H���g�̃t�@�C���ɂ���B
" let g:vimfiler_as_default_explorer=1

" �Z�[�t���[�h�𖳌�������B
let g:vimfiler_safe_mode_by_default=0

" -----------------------------------------------------------------------
" �t�@�C��
" -----------------------------------------------------------------------

" ���e���ύX���ꂽ�玩���I�ɍēǂݍ���
set autoread

" swp�t�@�C�����쐬���Ȃ��B
set noswapfile

" -----------------------------------------------------------------------
" �I��
" -----------------------------------------------------------------------
" C-v�̋�`�I���ōs���������J�[�\����u����B
set virtualedit=block



" -----------------------------------------------------------------------
" �\��
" -----------------------------------------------------------------------
"150�J����x50�s�ŕ\��
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


"���s�R�[�h�̔w�i�F�͖����A�`��F�̓_�[�N�O���[��
highligh NonText guibg=NONE guifg=DarkGreen
"�X�y�V�����L�[(���s�R�[�h�Ȃ�)�̔w�i�F�͂Ȃ��A�`��F�̓O���C30
highligh SpecialKey guibg=NONE guifg=Gray30

" ���ʂ̑Ή����n�C���C�g
set showmatch

set showtabline=2

" C����X�^�C���̃C���f���g�������œ����
set cindent

" �ҏW����t�@�C���̎�ނɉ����ăn�C���C�g�\�����s��
syntax enable

" --------------------------------------
" �J�����g�E�C���h�E�̃J�[�\���s�n�C���C�g�\������
" --------------------------------------
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

"------Look&Feel------

"EndOfLine��$�ŕ\���A�^�u��>.�ŕ\���A�����̂Ȃ��󔒂�_�ŕ\��
set listchars=eol:$,tab:>.,trail:_
"��L���e��\��
set list

" �S�p�󔒂��n�C���C�g�\��
scriptencoding utf-8

augroup highlightIdegraphicSpace
	autocmd!
	autocmd ColorScheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=Grey80
	autocmd VimEnter,WinEnter * match IdeographicSpace /�@/
augroup END

colorscheme koehler
" colorscheme murphy
" colorscheme pablo
" colorscheme torte
" colorscheme elflord


"�������ʂ̃n�C���C�g�\��
set hlsearch

" ���[���A�s�ԍ���\��
set ruler
set number

" �R�}���h���C���̍���
set cmdheight=1

" �J�[�\�����C����\������
set cursorline

" �E�C���h�E�^�C�g����ݒ肷��
set title

"�����������J�E���g
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
            " ������(���s�R�[�h��*���s�R�[�h�T�C�Y)��'g<C-g>'�̕������������
            let cr = &ff == 'dos' ? 2 : 1
            let cur -= cr * (line('.') - 1)
            let end -= cr * line('$')
        endif
        let s:WordCountStr = printf('%d/%d', cur, end)
    endif
    let v:statusmsg = s:saved_status
    return s:WordCountStr
endfunction

"�X�e�[�^�X���C���ɃR�}���h��\��
set showcmd
"�X�e�[�^�X���C������ɕ\��
set laststatus=2
"�ύX�̃`�F�b�N�\��
set statusline=%m
"�t�@�C���i���o�[�\��
set statusline+=[%n]
"�z�X�g���\��
set statusline+=%{matchstr(hostname(),'\\w\\+')}@
"�t�@�C�����\��
set statusline+=%<%F
"�ǂݍ��ݐ�p���ǂ����\��
set statusline+=%r
"�w���v�y�[�W�Ȃ�[HELP]�ƕ\��
set statusline+=%h
"�v���r���[�E�C���h�E�Ȃ�[Prevew]�ƕ\��
set statusline+=%w
"�t�@�C���t�H�[�}�b�g�\��
set statusline+=[%{&fileformat}]
"�����R�[�h�\��
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
"�t�@�C���^�C�v�\��
set statusline+=%y
"��������c�[���o�[�E��
set statusline+=%=
"skk.vim�̏��
set statusline+=%{exists('*SkkGetModeStr')?SkkGetModeStr():''}
"�����o�C�g��/�J�����ԍ�
set statusline+=[%{col('.')-1}=ASCII=%B,HEX=%c]
"���ݕ�����/�S�̗�\��
set statusline+=[C=%c/%{col('$')-1}]
"���ݕ����s/�S�̍s�\��
set statusline+=[L=%l/%L]
"���݂̃t�@�C���̕��������J�E���g
set statusline+=[WC=%{exists('*WordCount')?WordCount():[]}]
"���ݍs���S�̍s�̉�%�ڂ��\��
set statusline+=[%p%%]
"���W�X�^�̒��g��\��
"set statusline+=[RG=\"%{getreg()}\"]

" -----------------------------------------------------------------------
" ����
" -----------------------------------------------------------------------
" �s���܂Ō���������s���ɖ߂�
" set wrapscan
set nowrapscan

"�C���N�������^������(�L�[���[�h�̓��͊�����҂����ɁA���̓s�x����������)
set incsearch

" �啶������������ʂ��Ȃ�
set ignorecase

" �啶���Ō������ꂽ��Ώۂ�啶������ɂ���
set smartcase

" �S�p��\�����K�\�����͂��ȒP�ɂ���
" cnoremap <C-i>zk [^\x01-\x7E]

" -----------------------------------------------------------------------
" �ҏW
" -----------------------------------------------------------------------
"�N���b�v�{�[�h���L
set clipboard=unnamed,autoselect

"�o�b�N�X�y�[�X�ŐF�X�폜
set backspace=start,eol,indent

" �^�[�~�i���ォ��̓\��t��������
" set paste


"------Format------
"�����C���f���g
set smartindent
set autoindent

" �t�H�[�}�b�g�������R�����g�ȊO�L���ɂ���
set formatoptions-=c


" �s���̗]������ Tab ��ł����ނƁA 'shiftwidth' �̐������C���f���g����B
set smarttab


"�^�u�X�g�b�v��4�J����
set tabstop=4
set shiftwidth=4
" set softtabstop=0
" set expandtab


" ------ �L�[�ݒ� ------
"<ESC><ESC>�Ńn�C���C�g��OFF�ɂ���
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

" �������s�\�����s��Ȃ�
set nowrap

" ���X�N���[���o�[��\������B
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
" �L�[�}�b�v��`
" -----------------------------------------------------------------------
" Control+tab�Ŏ��̃o�b�t�@
" Control+Shift+tab�őO�̃o�b�t�@
" nmap <C-tab> :tabn<CR>
" nmap <C-S-tab> :tabp<CR>

" help�������₷������
nnoremap <C-h>	:<C-u>help<Space>

" �J�[�\�����̃L�[���[�h��:help�ň�����悤�ɂ���
nnoremap <C-h><C-h>	:<C-u>help<Space><C-r><C-w><CR>

" <C-x>�Ō��݂̃t�@�C���̃p�X��⊮
cmap <C-x> <C-r>=expand('%:p:h')<CR>


" grep�����̎��s���QuickFix List��\������
" autocmd QuickfixCmdPost make,vimgrep,grep copen
autocmd QuickfixCmdPost make,*grep* cwindow

" �X�e�[�^�X�s�Ɍ��݂�git�u�����`��\������
set statusline+=%{fugitive#statusline()}

set wildmenu

" �m�[�}�����[�h�ɂ����āAAlter+Enter�ŉ��s�}��
nmap <A-CR> i<CR><ESC>

" NeoComplCache���N������B
let g:neocomplcache_enable_at_startup = 1

" --------------------------------------
" �r�W���A�����[�h�ł̃C���f���g�ύX��A�����čs��
" --------------------------------------
" .�R�}���h�ő�p�\
" vnoremap < <gv
" vnoremap > >gv

" --------------------------------------
" �G���R�[�f�B���O���w�肵�ăt�@�C�����J��
" --------------------------------------
command! Cp932 edit ++=cp932
command! Eucjp edit ++=euc-jp
command! Iso2022jp edit ++=iso-2022-jp
command! Utf edit ++=utf-8
"jis��Sjis�̃��l�[��
command! Jis Iso2022jp
command! Sjis Cp932

" �����N�ɂ��Ă�D��C�Ɠ��l�̑̌n�Ƃ���B
nnoremap Y y$

nnoremap ; :
nnoremap : ;

vnoremap ; :
vnoremap : ;

au BufRead,BufNewFile *.md set filetype=markdown

" 16�i���̓C���N�������g�\�A8�i���̓C���N�������g�s�\
set nrformats=hex

" let mygrepprg   = 'findstr'
" let mygrepprg = 'grep'
" let myjpgrepprg = 'agrep.vim'

" ���Ȃǂ̋L�������p���ɂȂ�̂�h���B 
set ambiwidth=double

" �t�@�C���G���R�[�f�B���O�w��
" nnoremap <C-e>f :<C-u>edit ++enc=
" <c-e>�͈�s���ɃX�N���[��
" <c-y>�͈�s���ɃX�N���[��

" --------------------------------------
" �}���n
" --------------------------------------
" ���t�̂݁B
" nnoremap <c-i>dd <ESC>a<C-r>=strftime("%Y/%m/%d %H:%M")<CR><ESC>
" ()�t�����t�̂݁B
" nnoremap <c-i>db <ESC>a(<C-r>=strftime("%Y/%m/%d %H:%M")<CR>)<ESC>

" input : ==============================
" nnoremap <c-i>bd <ESC>30i=<ESC>

" input : ------------------------------
" nnoremap <c-i>bs <ESC>30i-<ESC>

" �擪�� '- '������B
" nnoremap <c-i>-<Space> <ESC>I-<Space><ESC>
" �擪�� '* '������B
" nnoremap <c-i>*<Space> <ESC>I*<Space><ESC>

" -------------------------------------
" �V�����E�C���h�E���E�ɊJ��
" --------------------------------------
set splitright


" --------------------------------------
" Vim�𕡐��N�����Ȃ���1�ɂ܂Ƃ߂�B
" -------------------------------------
" if v:servername == 'GVIM1'
" 	let file = expand('%:p')
" 	bwipeout
" 	call remote_send('GVIM', '<ESC>:tabnew ' .file .'<CR>')
" 	call remote_foreground('GVIM')
" 	quit
" endif

" --------------------------------------
" �E�C���h�E����̃L�[�}�b�v
" -------------------------------------
nnoremap s <Nop>
" ���Ɉړ�
nnoremap sj <C-w>j
" ��Ɉړ�
nnoremap sk <C-w>k
" �E�Ɉړ�
nnoremap sl <C-w>l
" ���Ɉړ�
nnoremap sh <C-w>h
" ���Ɉړ�
nnoremap sw <C-w>w
" �E�C���h�E�����Ɉړ�
nnoremap sJ <C-w>J
" �E�C���h�E����Ɉړ�
nnoremap sK <C-w>K
" �E�C���h�E���E�Ɉړ�
nnoremap sL <C-w>L
" �E�C���h�E�����Ɉړ�
nnoremap sH <C-w>H
" �E�C���h�E����]
nnoremap sr <C-w>r
" ���̃^�u
nnoremap sn gt
" �O�̃^�u
nnoremap sp gT
" �E�C���h�E�̑傫�������낦��B
nnoremap s= <C-w>=
nnoremap sO <C-w>=
" �E�C���h�E�̏c�����ő剻
nnoremap so <C-w>_<C-w>|
" �E�C���h�E�̍�������
nnoremap sdk <C-w>+
nnoremap sdj <C-w>-
" �E�C���h�E�̕�����
nnoremap sdl <C-w><
nnoremap sdh <C-w>>

nnoremap sP :<C-u>bp<CR>
" �V�K�^�u
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
" ��������
nnoremap ss :<C-u>sp<CR>
" ��������
nnoremap sv :<C-u>vs<CR>
" �^�u�����B
nnoremap sc :<C-u>tabc<CR>

" �E�C���h�E�����B
nnoremap sq :<C-u>q<CR>
" �o�b�t�@�����B
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

" gf�ŐV�����^�u�ŊJ��
nnoremap sgf <C-w>gF

" --------------------------------------
" �c����gf
" --------------------------------------
nnoremap gs :<c-u>vertical wincmd f<CR>

" �V�����^�u�ŊJ���B
nnoremap gS <C-w>gf

" nnoremap gS <C-w>f<c-w>J

" ���[�h���C����L���ɂ���B
set modeline
" 3�s�ڂ܂ł����[�h���C���Ƃ��Č�������
set modelines=3

" vim: foldmethod=marker
" vim: foldcolumn=3
" vim: foldlevel=0
"
" --------------------------------------
" QFixHowm�p(��������)
" --------------------------------------
" let howm_dir				= 'E:\office\ItaMemo'
" let howm_fileencoding		= 'utf-8'
" let howm_fileformat			= 'dos'
" " ,y �ŕ\�������\��ETODO�p�^�[��
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
" �o�b�t�@����
" --------------------------------------
" �o�b�t�@�ꗗ��\�����Ă��̂܂܃o�b�t�@��I���ł���悤�ɂ���
" cnoremap <c-b> :ls<CR>:buf 

" --------------------------------------
" �t�H�[���f�B���O
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
" unite-grep�֗̕��L�[�}�b�v
" vnoremap /g y:Unite grep::-iRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>

" %:h�͑ł��ɂ����̂�%%�ŃL�[�o�C���h�����Ƃ����B
" cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' : '%%'
"
nnoremap * *<c-o>
nnoremap g* g*<c-o>

" �J�[�\���ʒu�̒P���grep����
" nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

" unite grep �� ag(The Silver Searcher) ���g��
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif



" undo�t�@�C�������Ȃ��B
set noundofile
" --------------------------------------
" ����Ȏ������s��OFF
" --------------------------------------
set textwidth=0
" �f�t�H���gvimrc_example��textwidth�ݒ�㏑��
autocmd FileType text setlocal textwidth=0
inoremap <c-t> [<c-r>=strftime("%Y/%m/%d")<CR>]
" �J�[�\���L�[����
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

" <Space>c�őO��̃R�}���h���J��Ԃ��B
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
" ctrl-p��ag��g�ݍ��킹��B
"let g:ctrlp_user_command = 'ag %s -l'


set transparency=222

" --------------------------------------
" �I��
" --------------------------------------
" echo "Reading .vimrc -> Finish!"


