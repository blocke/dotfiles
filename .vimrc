
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

" Force use of flake8
let g:syntastic_python_checker = 'flake8'

" Disable certain PEP8 checks in flake8                                                                             
let g:syntastic_python_checker_args = '--ignore=E302'

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

" ### Replaced by neocomplcache ###
" Change autocomplete to Control-Space
"inoremap <Nul> <C-x><C-o>

" Inserts the longest common text of all matches, displays even with only one
"set completeopt+=longest,menuone

" Automatically close the preview buffer generated by Autocomplete
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Disable Omnicomplete Preview/QuickRef
"set completeopt-=preview

" Automatic comment insertion is evil
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Turn off autoindent
nnoremap <F10> :setl noai nocin nosi inde=<CR>
" Turn on autoindent
nnoremap <F11> :setl cin si<CR>


" Settings for neocomplcache

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1


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

" Disable arrow keys to encourage leaning text object navigation
noremap <Up> <Nop>
noremap! <Up> <Nop>
noremap <Down> <Nop>
noremap! <Down> <Nop>
noremap <Left> <Nop>
noremap! <Left> <Nop>
noremap <Right> <Nop>
noremap! <Right> <Nop>

