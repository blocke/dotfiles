
set nocompatible

" Kid Tested.  Python approved.
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set autoindent
set ignorecase
set smartcase

set scrolloff=3

set visualbell
set noerrorbells

set hidden
set ruler
set title
set showcmd

set showmatch
set hlsearch
set incsearch

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc

" Display filename in bottom bar
"set ls=2

" Default tab bindings too painful across platforms so use F1/F2 instead
map <F1> :tabp<CR>
map! <F1> <ESC>:tabp<CR>

map <F2> :tabn<CR>
map! <F2> <ESC>:tabn<CR>

" NERDTree on F3
map <F4> :NERDTreeToggle<CR>
map! <F4> <ESC>:NERDTreeToggle<CR>

" Tagbar on F5
map <F5> :TagbarToggle<CR>
map! <F5> <ESC>:TagbarToggle<CR>

" Always display tab bar
set stal=2

" Enable Pathogen
call pathogen#infect()

syntax on

" Autocomplete fun
filetype on
filetype plugin indent on
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" Change autocomplete to Control-Space
inoremap <Nul> <C-x><C-o>

" Inserts the longest common text of all matches, displays even with only one
set completeopt+=longest,menuone

" Automatically close the preview buffer generated by Autocomplete
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Disable Omnicomplete Preview/QuickRef
set completeopt-=preview

" Automatic comment insertion is evil
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Turn off autoindent
nnoremap <F10> :setl noai nocin nosi inde=<CR>
" Turn on autoindent
nnoremap <F11> cin si<CR>

" Woo colors...
if &term =~ "xterm"
    "256 color --
    let &t_Co=256
endif

if &term =~ "screen"
    "256 color --
    let &t_Co=256
endif

if &term =~ "linux"
    "256 color --
    let &t_Co=256
endif

colorscheme darkburn


