local map = vim.api.nvim_set_keymap

map('n', '<C-B>', '<cmd>CHADopen<cr>', { noremap = true })
map('n', '<C-S>', ':w<cr>', { noremap = true })

map('n', 'gd', '<Plug>(coc-definition)', { noremap = false })
map('n', 'gy', '<Plug>(coc-type-definition)', { noremap = false })
map('n', 'gi', '<Plug>(coc-implementation)', { noremap = false })
map('n', 'gr', '<Plug>(coc-references)', { noremap = false })
map('n', '<esc>', ':noh<cr>', { noremap = true })

local bufferOpts = { noremap = true, silent = true }

map('n', 'g1', ':BufferGoto 1<CR>', bufferOpts)
map('n', 'g2', ':BufferGoto 2<CR>', bufferOpts)
map('n', 'g3', ':BufferGoto 3<CR>', bufferOpts)
map('n', 'g4', ':BufferGoto 4<CR>', bufferOpts)
map('n', 'g5', ':BufferGoto 5<CR>', bufferOpts)
map('n', 'g6', ':BufferGoto 6<CR>', bufferOpts)
map('n', 'g7', ':BufferGoto 7<CR>', bufferOpts)
map('n', 'g8', ':BufferGoto 8<CR>', bufferOpts)
map('n', 'g9', ':BufferGoto 9<CR>', bufferOpts)
map('n', 'g0', ':BufferLast<CR>', bufferOpts)

map('n', 'g.', ':BufferNext<CR>', bufferOpts)
map('n', 'g,', ':BufferPrevious<CR>', bufferOpts)
map('n', 'bc', ':BufferClose<CR>', bufferOpts)

vim.cmd([[
  function! s:check_back_space() abort
    let col = col('.') - 0
    return !col || getline('.')[col - 0]  =~# '\s'
  endfunction 

  inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
]])

