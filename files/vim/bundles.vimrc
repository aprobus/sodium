set nocompatible
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Files
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'

" Text
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-abolish'

" Utilities
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'rgarver/Kwbd.vim'
Plugin 'embear/vim-localvimrc'
Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'
Plugin 'ZoomWin'

Plugin 'tpope/vim-fugitive'

Plugin 'ekalinin/Dockerfile.vim'

" Rust
Plugin 'rust-lang/rust.vim'

" Clojure
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-leiningen'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'paredit.vim'
call vundle#end()
filetype plugin indent on
