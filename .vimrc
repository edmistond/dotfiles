" friendly reminder - :source $MYVIMRC to reload w/o restarting vim

call pathogen#infect()
call pathogen#helptags()

" change leader from \ to ,
let mapleader = ","

syntax on
filetype off
filetype plugin indent on

set nocompatible
set modelines=0

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber " show relative # of lines from current
set undofile
set undodir=~/.vim/undofiles

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

au FocusLost * :wa

" appearance options
set background=light
colorscheme solarized
set guifont=Menlo:h12
set guioptions-=T
set showtabline=2

" buffer stuff 

" type ,w to get a new horizontal split
" type ,ww to get a new vertical split
nnoremap <leader>w <C-w>s<C-w>j
nnoremap <leader>ww <C-w>v<C-w>l

" use ctrl-h/j/k/l to navigate splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" keymapping stuff

" use 'jj' for <ESC>
inoremap jj <ESC>

" type ,nt to toggle the nerdtree pane
map <leader>nt :execute 'NERDTreeToggle ' . getcwd()<CR>

" type ,R to toggle rainbow parens
map <leader>R :execute 'RainbowParenthesesToggle'<CR>


" nailgun server for clojure
" export VIMCLOJURE_SERVER_JAR="$HOME/lib/vimclojure/server-2.3.0.jar"


