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

" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
" Plugin 'mileszs/ack.vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'gregsexton/gitv'
" Plugin 'airblade/vim-gitgutter'
Plug 'vimwiki/vimwiki'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set updatetime=250
