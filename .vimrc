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
Bundle 'c9s/bufexplorer'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'maksimr/vim-jsbeautify'
"Bundle 'edmistond/vim-jsbeautify'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-surround'
Bundle 'tsaleh/vim-align'
Bundle 'Valloric/YouCompleteMe'
Bundle 'myusuf3/numbers.vim'
Bundle 'chriskempson/base16-vim'
Bundle 'jgdavey/tslime.vim'

" change leader from \ to ,
let mapleader = ","

syntax on
filetype off
filetype plugin indent on

set nocompatible
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
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
colorscheme base16-default
"set guifont=Ubuntu\ Mono\ derivative\ Powerline:h13
set guifont=Monaco\ for\ Powerline:h11
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

" ctrl-l for hashrockets
inoremap <C-L> <Space>=><Space>

" type ,nt to toggle the nerdtree pane
map <leader>nt :execute 'NERDTreeToggle ' . getcwd()<CR>

" type ,R to toggle rainbow parens
map <leader>R :execute 'RainbowParenthesesToggle'<CR>

" datetime inserts
imap <F3> <C-R>=strftime("%Y%m%d%H%M%S")<CR>
cmap <F3> <C-R>=strftime("%Y%m%d%H%M%S")<CR>

au FileType ruby AlignCtrl lP0

map <leader>ay :AlignCtrl =p0P1
map <leader>ar :AlignCtrl lp0P0
