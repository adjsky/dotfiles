syntax on

set termguicolors
set number
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set guicursor=i:ver1
set guicursor+=a:blinkon1
set mouse=a
set clipboard=unnamedplus

call plug#begin()
  " theme
  Plug 'dracula/vim'

  " colors
  Plug 'norcalli/nvim-colorizer.lua'

  " indent
  Plug 'Yggdroot/indentLine'

  " comments
  Plug 'tpope/vim-commentary'

  " lsp
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " chadtree
  Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
call plug#end()

let g:dracula_colorterm = 0
colorscheme dracula

let g:vim_json_conceal=0

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" maps
nnoremap <C-B> <cmd>CHADopen<cr>
nnoremap <C-S> <cmd>Prettier<cr>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nnoremap <esc> :noh<return><esc>
