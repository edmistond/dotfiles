" friendly reminder - :source $MYVIMRC to reload w/o restarting vim

" Vundle stuff!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" set up the bundles to use... starting w/ letting Vundle self-manage
Bundle 'gmarik/vundle'

Bundle 'Chiel92/vim-autoformat'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-surround'
Bundle 'tsaleh/vim-align'

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

set noswapfile

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

set nowrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85


" appearance options
set background=dark
colorscheme solarized
set guifont=Source\ Code\ Pro:h12
set guioptions-=T
set showtabline=2

" buffer stuff 

" type ,sh to get a new horizontal split
" type ,sv to get a new vertical split
nnoremap <leader>sh <C-w>s<C-w>j
nnoremap <leader>sv <C-w>v<C-w>l

" use ctrl-h/j/k/l to navigate splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap j gj
nnoremap k gk
nnoremap ; :

nnoremap tj :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>

" keymapping stuff

" use 'jj' for <ESC>
inoremap jj <ESC>

" ctrl-l for hashrocks
inoremap <C-L> => 

" type ,nt to toggle the nerdtree pane
map <leader>nt :execute 'NERDTreeToggle ' . getcwd()<CR>

" type ,R to toggle rainbow parens
map <leader>R :execute 'RainbowParenthesesToggle'<CR>

" datetime inserts
imap <F3> <C-R>=strftime("%Y%m%d%H%M%S")<CR>
cmap <F3> <C-R>=strftime("%Y%m%d%H%M%S")<CR>

au FileType ruby AlignCtrl lP0
