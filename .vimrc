" BEGIN VUNDLE-RELATED ENTRIES
" See https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required
filetype plugin indent on    " required

" END VUNDLE-RELATED ENTRIES

set tabstop=4
set expandtab
set clipboard=unnamedplus
set pastetoggle=<F3>

syntax on
filetype indent plugin on
set hlsearch
set incsearch
set colorcolumn=81

set background=dark
set statusline+=%F
