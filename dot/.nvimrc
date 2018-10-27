". TOGGLE COMMANDS
let g:termToggle= 0
"let test#strategy = "vimux"
let mapleader = ","
let maplocalleader = "\\"
let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_prefer_global_sln = 1
" let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:deoplete#enable_at_startup = 1
let g:phpcomplete_index_composer_command = "composer dumpautoload"
let g:autotagTagsFile = "tags"
"TEST TEST
let g:autotagCtagsCmd = "ctags -R -a"
set columns=80
set colorcolumn=80
set nohlsearch
set complete 
set autoindent
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2
set number

set spell spelllang=en_us
"set norelativenumber
set relativenumber
set showmode
set showmatch
set syntax=on
set tw=50
set bg=dark
set splitbelow
set splitright
set nocompatible
set showcmd
set cursorline
syntax enable
set foldmethod=indent
set sidescroll=5
set wrap
set linebreak
set showbreak=\ \ \ \ \ 
set list
set textwidth=0
set listchars=tab:\→\ ,eol:¬,trail:·,precedes:«,extends:»
set wildmode=longest,list,full
set wildmenu
set ignorecase smartcase
set ruler 
filetype plugin on


"set omnifuncnc j=syntaxcomplete#Complete
" INSERT MODE
"inoremap [ []<esc>i
"inoremap { {}<esc>i
"inoremap ( ()<esc>i
"inoremap < <><esc>i
"inoremap \" \""<esc>i
"inoremap ' ''<esc>i
"inoremap <Tab> <C-p>
"inoremap <s-Tab> <C-n>
"inoremap <c-b> <esc><right>a
"inoremap <c-u> <esc>vawUea
inoremap jk <esc>
inoremap <c-[> <nop>
inoremap <cr> <cr>
"inoremap <c-n> <c-x><C-n>
"inoremap <c-j> <c-n>
"inoremap <c-k> <c-p>
" NORMAL MODE
nnoremap <silent> <F7> :set spell!<cr>
nnoremap <silent> <F8> :TestNearest<cr>
nnoremap <F6> :call ToggleTerm()<cr>
function! ToggleTerm()
	if g:termToggle == 0
		execute "normal! 20\<c-w>j 5\<c-w>- 20\<c-w>k'' \<cr>"
		let g:termToggle=1
		echom g:termToggle
	else
		execute "normal! 20\<c-w>j 5\<c-w>+ 20\<c-w>k'' \<cr>"
		execute "let g:termToggle=0"
		echom g:termToggle
	endif
endfunc

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
nnoremap <space> @q
" nnoremap - ddp
"nnoremap _ yypD<up><up>O<esc>pmq<down><down>2dd`q
" nnoremap _ mm0D<up>O<esc>pmn`mdd`n
"nnoremap <s-k> 1<c-Y>
"nnoremap <s-j> 1<c-E>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-w>k 10<c-w>+
nnoremap <c-w>j 10<c-w>-
nnoremap <c-w>h 10<c-w><
nnoremap <c-w>l 10<c-w>>
nnoremap <c-w>O 100<c-w>+
nnoremap <c-w>o 100<c-w>>
nnoremap <c-w>S 100<c-w>-
nnoremap <c-w>s 100<c-w><
"
" TMUX Naviagation
"let g:tmux_navigator_no_mappings = 1

"nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
"nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
"nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
"nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" TERMINAL MODE
tnoremap <C-h> <C-\><C-n><C-h>
tnoremap <C-j> <C-\><C-n><C-j>
tnoremap <C-k> <C-\><C-n><C-k>
tnoremap <C-l> <C-\><C-n><C-l>

" OPERATOR-PENDING MAPS
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap an( :<c-u>normal! f(bvt(<cr>
onoremap al( :<c-u>normal! F(bvt(<cr>

onoremap in' :<c-u>normal! f'vi'<cr>
onoremap il' :<c-u>normal! F'vi'<cr>
onoremap an' :<c-u>normal! f'bvt'<cr>
onoremap al' :<c-u>normal! F'bvt'<cr>

onoremap in" :<c-u>normal! f"vi"<cr>
onoremap il" :<c-u>normal! F"vi"<cr>
onoremap an" :<c-u>normal! f"bvt"<cr>
onoremap al" :<c-u>normal! F"bvt"<cr>

onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap il[ :<c-u>normal! F]vi[<cr>
onoremap an[ :<c-u>normal! f[bvt[<cr>
onoremap al[ :<c-u>normal! F[bvt[<cr>

" LEADER MAPS
nnoremap <leader><s-h> <home>
nnoremap <leader>L <end>
"nnoremap <leader>c viwyi<space><esc>/<C-R>"<cr>hxlciw
nnoremap <leader>n n.
nnoremap <leader>f viwy/<C-R>"<cr>
nnoremap <leader>F viwy?<C-R>"<cr>
"vnoremap <leader>" va"<esc>bi"<esc>
nnoremap <leader>ev :vsplit $MYNVIMRC<cr>
nnoremap <leader>ep :vsplit $NVIM_PLUGS<cr>
nnoremap <leader>sp :source $NVIM_PLUGS<cr>
nnoremap <leader>sv :source $MYNVIMRC<cr>
"nnoremap <leader>d yyp
nnoremap <leader>b vas
nnoremap <leader>l vg_
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>h <home>zc
nnoremap <leader>j o<esc><up>
nnoremap <leader>k O<esc><down>

"nnoremap <F7> 5<c-j>5

" ABBREVIATIONS
iabbrev @@ mmarkwald01@gmail.com
" SPELL CHECK
iabbrev widht width
iabbrev yuo you
iabbrev waht what
iabbrev wiht with
iabbrev htis this
iabbrev teh the
iabbrev oru our

" NERDTREE
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "m",
    \ "Staged"    : "s",
    \ "Untracked" : "u",
    \ "Renamed"   : "r",
    \ "Unmerged"  : "nm",
    \ "Deleted"   : "d",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" TERMINAL STARTUP
echo ">^.^<"

" AUTO COMMANDS
augroup file_load
	autocmd!
	autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	"autocmd VimEnter * :execute "normal! :split \<cr> \<c-w>\<s-j> 5\<c-w>- :term \<cr> \<c-w>k"
augroup END

augroup file_save
	autocmd!
	"autocmd BufWritePost .vimrc source %
augroup END

augroup filetype_html
	autocmd!
	"autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
	"autocmd BufWritePre,BufRead *.html :normal gg=G
	autocmd bufNewFile,BufRead *.html setlocal nowrap
augroup END

augroup filetype_py
	autocmd!
augroup END

augroup filetype_php
	autocmd!
	autocmd Filetype php setlocal omnifunc=phpcomplete_extended#CompletePHP
	autocmd Filetype php nnoremap <buffer> <localleader><localleader> I// <esc><home>
	autocmd Filetype php nnoremap <buffer> <localleader>\| <end>2F/3x<home>
augroup END

augroup filetype_cs
	autocmd!
	autocmd Filetype cs nnoremap <buffer> <localleader><localleader> I// <esc><home>
	autocmd Filetype cs nnoremap <buffer> <localleader>\| <end>2F/3x<home>
	" autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
	autocmd Filetype cs :source ~/.vim/usr/omnisharp.vim
augroup END

augroup filetype_js
augroup end

augroup filetype_md
	autocmd!
	autocmd BufNewFile, BufRead *.md, *.markdown setlocal filetype=ghmarkdown
	"autocmd filetype markdown nnoremap <buffer> <localleader>= yy<down>VpVr=<esc><up>
	autocmd filetype markdown nnoremap <buffer> <localleader>= yyo<esc>k<s-v>r=
	autocmd filetype markdown nnoremap <buffer> <localleader>- yy<down>VpVr-<esc><up>
	autocmd filetype markdown nnoremap <buffer> <localleader>3 I###<space><esc>
	autocmd filetype markdown nnoremap <buffer> <localleader>4 I####<space><esc>
	autocmd filetype markdown nnoremap <buffer> <localleader>5 I#####<space><esc>
	autocmd filetype markdown nnoremap <buffer> <localleader>6 I######<space><esc>
	autocmd filetype markdown nnoremap <buffer> <localleader><localleader> I```<cr><esc>o```<up>
"	autocmd filetype markdown iabbrev ! ![][]:execute normal F2[a
augroup end

augroup filetype_sh
	autocmd!
	autocmd filetype sh nnoremap <buffer> <localleader>c I# <esc>
	autocmd filetype sh nnoremap <buffer> <localleader><localleader> I# <esc>
	autocmd filetype sh nnoremap <buffer> <localleader>C <end>F#2x
	autocmd filetype sh nnoremap <buffer> <localleader>\| <end>F#2x
augroup end

" python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
  " project_base_dir = os.environ['VIRTUAL_ENV']
    " activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
      " execfile(activate_this, dict(__file__=activate_this))
      " EOF
