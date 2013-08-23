
set nocompatible
filetype off            " required by vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle Bundles
Bundle 'gmarik/vundle'

" Navigation
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'

" UI
Bundle 'mbbill/undotree'

" RHEL 6 only has VIM 7.2 *cry*
if v:version >= 703
    Bundle 'myusuf3/numbers.vim'
endif

" Formatting
Bundle 'godlygeek/tabular'

" Snips / Completion
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" Programming
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'

" HTML
Bundle 'amirh/HTML-AutoCloseTag'
Bundle 'hail2u/vim-css3-syntax'

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

"set hidden
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

" Force use of flake8
let g:syntastic_python_checker = 'flake8'

" Disable certain PEP8 checks in flake8
let g:syntastic_python_flake8_post_args='--ignore=E501,E302'

syntax on

" Automatic comment insertion is evil
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Turn off autoindent
nnoremap <F10> :setl noai nocin nosi inde=<CR>
" Turn on autoindent
nnoremap <F11> :setl cin si<CR>

" Yaml indenting
autocmd FileType yaml set tabstop=2 expandtab softtabstop=2

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


