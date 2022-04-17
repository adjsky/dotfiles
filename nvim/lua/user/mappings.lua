local map = vim.api.nvim_set_keymap

-- open file explorer
map('n', '<C-B>', ':Neotree toggle<CR>', { noremap = true })

-- save file
map('n', '<C-S>', ':w<cr>', { noremap = true })

-- clear higlights after searching
map('n', '<esc>', ':noh<cr>', { noremap = true })

-- invert tab
map('i', '<S-Tab>', '<C-d>', { noremap = true })

-- open fuzzy finder
map('n', '<C-p>', '<cmd>Telescope find_files prompt_prefix=<cr>', { noremap = true })

-- format document
map('n', 'fd', '<cmd>Neoformat prettier<cr>', { noremap = true })

-- git conflicts
map('n', 'ci', '<cmd>GitConflictChooseTheirs<cr>', { noremap = true })
map('n', 'cc', '<cmd>GitConflictChooseOurs<cr>', { noremap = true })
map('n', 'cb', '<cmd>GitConflictChooseBoth<cr>', { noremap = true })
map('n', 'cn', '<cmd>GitConflictChooseNone<cr>', { noremap = true })

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

