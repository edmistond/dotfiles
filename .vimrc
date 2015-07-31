" friendly reminder - :source $MYVIMRC to reload w/o restarting vim

" Vundle stuff!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" set up the bundles to use... starting w/ letting Vundle self-manage
Plugin 'gmarik/Vundle.vim'

" install a bunch of bundles
Plugin 'Chiel92/vim-autoformat'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'c9s/bufexplorer'
Plugin 'chriskempson/base16-vim'
Plugin 'elzr/vim-json'
Plugin 'jgdavey/tslime.vim'
Plugin 'jnwhiteh/vim-golang'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'marijnh/tern_for_vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic.git'
Plugin 'sebastiangeiger/gitignore.vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rvm'
Plugin 'tpope/vim-surround'
Plugin 'tsaleh/vim-align'
Plugin 'vim-ruby/vim-ruby'

" change leader from \ to ,
let mapleader = ","
let g:mapleader = ","

" get ctrl-p to show hidden files
let g:ctrlp_show_hidden = 1

" use nerdtree as a split explorer instead
let NERDTreeHijackNetrw=1

syntax enable
filetype off
filetype plugin on
filetype indent on

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

" ignore case when searching
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch

" don't redraw when running macros
set lazyredraw

" shut up annoying error notifications
set noerrorbells
set novisualbell

set ai "Auto indent
set si "Smart indent

set nowrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" appearance options
set background=dark

if has("gui_macvim")
  "colorscheme base16-default
  colorscheme jellybeans
  set guifont=Menlo:h12
endif

"set guifont=Source\ Code\ Pro:h12
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
map <C-F> :call JsBeautify()<CR>

" datetime inserts
imap <F3> <C-R>=strftime("%Y%m%d%H%M%S")<CR>
cmap <F3> <C-R>=strftime("%Y%m%d%H%M%S")<CR>

au FileType ruby AlignCtrl lP0

map <leader>ay :AlignCtrl =p0P1
map <leader>ar :AlignCtrl lp0P0

" pulling in some useful stuff from 
" https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Close ALL the buffers
map <leader>ba :1,1000 bd!<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Allow pretty powerline fonts, but only if we're in macvim
"if has("gui_macvim")
"  let g:airline_powerline_fonts = 1
"else
"  let g:airline_powerline_fonts = 0
"endif
              
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

set wildignore+=*/_site/*
set wildignore+=*/.idea/*

let g:syntastic_ruby_checkers = ['mri', 'rubocop']
