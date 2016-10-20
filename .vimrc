set nocompatible
set autoindent
set hlsearch
set background=dark
set smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set number

syntax on

" Vundle lines
" Install:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR>
