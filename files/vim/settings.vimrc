set nocompatible

let mapleader = ","
"color vividchalk
set guifont=monaco:h16
let &t_Co=256

filetype plugin indent on

set cursorline
set hidden
set number
set ruler
set encoding=utf-8
syntax on

set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

set nohlsearch
set incsearch
set ignorecase
set smartcase

set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

set laststatus=2
set showcmd

set noswapfile
set nobackup
set nowb

set ttyfast
set ttyscroll=3
set lazyredraw
set re=1

set autoread
set autowrite

" Vertical split
nnoremap <leader>v <C-W>v<C-W>l
" Horizontal split
nnoremap <leader>h :split<CR><C-W>j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufNewFile,BufRead *.json set ft=javascript

" NERDTree
nnoremap <silent> <C-\> :NERDTreeFind<CR>
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <leader>nt :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>

" ZoomWin
map <leader><leader> :ZoomWin<CR>

command! -nargs=1 Vres vertical res <args>
