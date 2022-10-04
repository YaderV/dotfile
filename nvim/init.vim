" Plugin Section
"""""""""""""""""""""""""""""""""""""
call plug#begin()
 Plug 'ryanoasis/vim-devicons'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'doums/darcula'
 Plug 'jacoborus/tender.vim'
 Plug 'mhinz/vim-startify'
 Plug 'jiangmiao/auto-pairs'
 Plug 'Yggdroot/indentLine'
 Plug 'pangloss/vim-javascript'
 Plug 'dense-analysis/ale'
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
 Plug 'preservim/tagbar'
 Plug 'jeetsukumaran/vim-buffergator'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'rust-lang/rust.vim'
 Plug 'axelf4/vim-strip-trailing-whitespace'
 Plug 'mg979/vim-visual-multi'
 Plug 'alvan/vim-closetag'
 if has('nvim') || has('patch-8.0.902')
   Plug 'mhinz/vim-signify'
 else
   Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
 endif
call plug#end()

" System Conf
"""""""""""""""""""""""""""""""""""""
let g:python3_host_prog = '/home/yader/.pyenv/versions/py3nvim/bin/python'
let g:python_host_prog = '/home/yader/.pyenv/versions/py2nvim/bin/python'
" General Conf
"""""""""""""""""""""""""""""""""""""
xnoremap p "_dP			        " always pays from register 0
set nu
set rnu                         " add line numbers
set nocompatible		        " disable compatibility to old-time vi
set showmatch                   " show matching 
set hlsearch                    " highlight search 
set incsearch                   " incremental search
set autoindent                  " indent a new line the same amount as the line just typed
set wildmode=longest,list	    " get bash-like tab completions
filetype plugin indent on	    " allow auto-indenting depending on file type
syntax on			            " syntax highlighting
set clipboard=unnamedplus	    " using system clipboard
filetype plugin on
set ttyfast			            " Speed up scrolling in Vim
set tabstop=4			        " number of columns occupied by a tab 
set softtabstop=4		        " see multiple spaces as tabstops so <BS> does the right thing
set expandtab			        " converts tabs to white space
set shiftwidth=4		        " width for autoindents
set mouse=a                  	" enable mouse click
set updatetime=100              " Required for vim-signify
" set cc=80			            " set an 80 column border for good coding style
" set noswapfile		        " disable creating swap file
" set backupdir=~/.cache/vim	" Directory to store backup files.
" set ignorecase		        " case insensitive 
" set mouse=v			        " middle-click paste with 

" ALE
let g:ale_linters = {'python': ['flake8'], 'go': ['golint', 'gopls']}
let g:ale_fixers = {'python': ['black', 'isort'], 'go': ['gofmt', 'goimports']}
let g:ale_fix_on_save = 1

" Indent
let g:indentLine_enabled = 0
let g:indentLine_char = '.'

" gopls
" let g:go_gopls_enabled = 0
let g:go_gopls_options=["--mode=stdio"]

" more go
let g:go_highlight_functions = 1
" let g:go_highlight_function_calls = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_operators = 1

" Tagbar
map <leader>t :TagbarToggle<CR>

" close tags
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" Mapping
"""""""""""""""""""""""""""""""""""""

nnoremap <Leader><Leader> :source $MYVIMRC<cr>

" Moving lines
" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Nerdtree
nnoremap <leader>N :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" Indentation lines
:map <Leader>l :IndentLinesToggle<CR>

" Move between panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move panes
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" ALE
:map <leader>a :ALEToggle<cr>

" Tagbar
nmap <leader>rt :TagbarToggle<CR>

" Styles
"""""""""""""""""""""""""""""""""""""
if (has("termguicolors"))
 set termguicolors
endif
set t_Co=256
set cursorline
colorscheme tender 
" syntax enable
" colorscheme darcula 
