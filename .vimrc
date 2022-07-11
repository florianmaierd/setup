call plug#begin()
    Plug 'morhetz/gruvbox'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'sheerun/vim-polyglot'
call plug#end()

syntax on
set t_Co=256
set bg=dark
set number
set nowrap
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

colorscheme gruvbox
