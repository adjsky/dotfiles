return require'packer'.startup(function(use)
  -- COC:)
  use { 'neoclide/coc.nvim', branch = 'release' }

  -- colorscheme
  use 'dracula/vim'

  -- indents
  use 'lukas-reineke/indent-blankline.nvim'

  -- commenting
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'tpope/vim-commentary'

  -- explorer
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
    }
  }

  -- tabs
  use { 'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons' }

  -- discord rich presence
  use 'andweeb/presence.nvim'

  -- git
  use 'lewis6991/gitsigns.nvim'
end)

