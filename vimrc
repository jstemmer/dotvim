" enable all features
set nocompatible

" pathogen
filetype off
execute pathogen#infect()

filetype on
filetype indent on
filetype plugin on

" lower timeout length
set ttimeoutlen=100

" disable esckeys
set noesckeys

" disable word wrap
set nowrap

" use tabs, tabsize 4 spaces
set tabstop=4
set smarttab
set shiftwidth=4
set autoindent

set backspace=start,indent

" do not insert 2 spaces after a '.', '?' or '!' with a join command.
set nojoinspaces

" enable title
set title

" ruby
autocmd FileType ruby,eruby,cucumber set expandtab tabstop=2 shiftwidth=2 tabstop=2
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" line numbers
set number

" highlight the searchterms
set hlsearch

" jump to matches while typing
set incsearch

" ignore case while searching if all lowercase
set ignorecase
set smartcase

" don't wrap words
set textwidth=0

" history and undo
set history=1000
set undolevels=1000

" show matching braces
set showmatch

" enable syntax highlighting
syntax on
set bg=dark

" enable 256 color terminal
set t_Co=256

" always show the menu, insert longest match
set completeopt=menuone,longest

" bash-like tab completion
set wildmode=longest,list,full

" allows changing buffer with unsaved changes
set hidden

" colorscheme
let g:solarized_termcolors=256
colorscheme solarized

set grepprg=ack-grep
set grepformat=%f:%l:%m

" statusline
set statusline=%t%m%r\ %{fugitive#statusline()}%=[%{&ff}%Y]\ [%04l,%04v,%p%%]
set laststatus=2

" highlight current line
"set cursorline

" show command
set showcmd

" disable F1 key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" movement by screenline instead of file line
nnoremap j gj
nnoremap k gk

" tabs
nnoremap <c-n> :tabnew<cr>
nnoremap <c-l> gt
nnoremap <c-h> gT

" set , as leader
let mapleader = ","

" set space as localleader
let maplocalleader = " "

" toggle NERDTree with <leader>d
nnoremap <silent> <leader>d :NERDTreeToggle<cr>

" NERDTree size
let NERDTreeWinSize = 40

" NERDTree ignore files
let NERDTreeIgnore=['\~$', '\.6$']

" remove trailing white-spaces with <leader>W
nnoremap <leader>W :%s/\s\+$//<cr>:noh<CR>

" toggle word wrap
nnoremap <leader>w :set wrap!<cr>

" remove highlight on <leader><space>
nnoremap <leader><space> :noh<cr>

" compile with <leader>m
nnoremap <leader>m :make<cr>

" open browser
:command -bar -nargs=1 OpenURL :!sensible-browser <args>

" change default filetype back to 'tex' for latex files
let g:tex_flavor='latex'

" disable indentation for pasting
nnoremap <F2> :set invpaste<CR>

" bufexplorer: map b
nnoremap <silent> <unique> <leader>b :BufExplorer<CR>

" ignore files
set wildignore+=*.class,*.rbc,*.6

" ctrlp to <leader>v
let g:ctrlp_map = '<leader>v'

" only update ctrlp window after typing has stopped
let g:ctrlp_lazy_update = 1

" tagbar
nnoremap <silent> <leader>t :TagbarToggle<CR>
nnoremap <silent> <leader>T :TagbarOpenAutoClose<CR>
let g:tagbar_width = 60

" gitolite
autocmd FileType gitolite set expandtab tabstop=4 shiftwidth=4 tabstop=4

" tabular: align ruby symbols
nnoremap <leader>r: :Tabularize / :/l0<cr>

" enable matchit for vim-textobj-rubyblock plugin
runtime macros/matchit.vim

" gitv mapping
nnoremap <leader>k :Gitv<cr>

" go language code formatter
nnoremap <leader>f :Fmt<cr>

" godoc
nnoremap <leader>gd :Godoc

" ctrl+space for autocompletion
inoremap <Nul> <C-x><C-o>

" Use fancy symbols in statusline
let g:Powerline_symbols = "compatible"

" gundo
nnoremap <leader>u :GundoToggle<cr>

" start unfolded
set foldlevel=99

" go tagbar
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'f:functions',
		\ 'm:methods',
		\ 'r:constructor'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }
