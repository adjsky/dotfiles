local map = vim.api.nvim_set_keymap

map("n", "<C-B>", "<cmd>CHADopen<cr>", { noremap = true })
map("n", "<C-S>", "<cmd>Prettier<cr> <bar> :w<cr>", { noremap = true })

map("n", "gd", "<Plug>(coc-definition)", { noremap = false })
map("n", "gy", "<Plug>(coc-type-definition)", { noremap = false })
map("n", "gi", "<Plug>(coc-implementation)", { noremap = false })
map("n", "gr", "<Plug>(coc-references)", { noremap = false })
map("n", "<esc>", ":noh<cr>", { noremap = true })

vim.cmd([[
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
]])

