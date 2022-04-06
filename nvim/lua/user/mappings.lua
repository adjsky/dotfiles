vim.api.nvim_set_keymap("n", "<C-B>", "<cmd>CHADopen<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-S>", "<cmd>Prettier<cr> <bar> :w<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", { noremap = false })
vim.api.nvim_set_keymap("n", "gy", "<Plug>(coc-type-definition)", { noremap = false })
vim.api.nvim_set_keymap("n", "gi", "<Plug>(coc-implementation)", { noremap = false })
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", { noremap = false })

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

