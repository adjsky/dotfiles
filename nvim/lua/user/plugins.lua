return require("packer").startup(function(use)
  use { 'neoclide/coc.nvim', branch = 'release '}

  use 'dracula/vim'

  use 'Yggdroot/indentLine'

  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use { 'nvim-treesitter/nvim-treesitter', run =  ':TSUpdate' }
  use 'tpope/vim-commentary'

  use { 'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps' }
end)

