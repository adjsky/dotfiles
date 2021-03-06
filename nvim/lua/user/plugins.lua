return require'packer'.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'folke/tokyonight.nvim'

  -- indents
  use 'lukas-reineke/indent-blankline.nvim'

  -- commenting
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'tpope/vim-commentary'

  -- explorer
  use {
  'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
      'MunifTanjim/nui.nvim'
    }
  }

  -- tabs
  use { 'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons' }

  -- discord rich presence
  use 'andweeb/presence.nvim'

  -- git
  use 'lewis6991/gitsigns.nvim'

  -- git conflicts
  use 'akinsho/git-conflict.nvim'

  -- startup
  use { 'goolord/alpha-nvim', requires = 'kyazdani42/nvim-web-devicons' }

  -- cmp plugins
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- LSP
  use 'neovim/nvim-lspconfig' -- enable LSP
  use 'williamboman/nvim-lsp-installer' -- simple to use language server installer

  -- autotag & pairs
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- formatting
  use 'sbdchd/neoformat'

  -- color highlighting
  use { 'RRethy/vim-hexokinase', run = 'make hexokinase' }
end)

