". TOGGLE COMMANDS
let g:termToggle= 0
"let test#strategy = "vimux"
let mapleader = ","
let maplocalleader = "\\"
" let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" "let g:autotagTagsFile = "tags"
" "let g:autotagCtagsCmd = "ctags -R -a"
set columns=80
set colorcolumn=80
set nohlsearch
"set complete 
set autoindent
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2
set number

"set spell spelllang=en_us
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
"set cursorline
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
"nnoremap <silent> <F8> :TestNearest<cr>
"nnoremap <F6> :call ToggleTerm()<cr>
function! ToggleTerm()
"if g:termToggle == 0
	"execute "normal! 20\<c-w>j 5\<c-w>- 20\<c-w>k'' \<cr>"
	"let g:termToggle=1
	"echom g:termToggle
"else
	"execute "normal! 20\<c-w>j 5\<c-w>+ 20\<c-w>k'' \<cr>"
	"execute "let g:termToggle=0"
	"echom g:termToggle
"endif
endfunc

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
nnoremap <space> @q
" nnoremap - ddp
"nnoremap _ yypD<up><up>O<esc>pmq<down><down>2dd`q
" nnoremap _ mm0D<up>O<esc>pmn`mdd`n
"nnoremap <s-k> 1<c-Y>
"nnoremap <s-j> 1<c-E>

" SPLIT CONTROLS
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
"
"" TERMINAL MODE
tnoremap <C-h> <C-\><C-n><C-h>
tnoremap <C-j> <C-\><C-n><C-j>
tnoremap <C-k> <C-\><C-n><C-k>
tnoremap <C-l> <C-\><C-n><C-l>

"" OPERATOR-PENDING MAPS
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
"echo ">^.^<"

