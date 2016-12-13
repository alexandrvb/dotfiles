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
set ruler
set wildmenu

syntax on

" Vundle lines
" Install:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
