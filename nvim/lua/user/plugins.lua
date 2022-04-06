return require("packer").startup(function(use)
  -- COC:)
  use { 'neoclide/coc.nvim', branch = 'release '}

  -- colorscheme
  use 'dracula/vim'

  -- indents
  use 'Yggdroot/indentLine'

  -- commenting
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use { 'nvim-treesitter/nvim-treesitter', run =  ':TSUpdate' }
  use 'tpope/vim-commentary'

  -- explorer
  use { 'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps' }

  -- tabs
  use { 'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons' }
end)

