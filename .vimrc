call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()


set ts=2
set expandtab
set shiftwidth=0
set softtabstop=2
set autoindent
set mouse=

set hlsearch
set incsearch

set syntax=on

set number

set nrformats=
set noswapfile

" mappings

map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
