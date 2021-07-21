call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

let g:dracula_colorterm = 0
colorscheme dracula
syntax on
set termguicolors
set expandtab
set tabstop=4
set shiftwidth=4
