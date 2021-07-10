call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

colorscheme dracula
syntax on
set termguicolors
set expandtab
set tabstop=4
set shiftwidth=4
