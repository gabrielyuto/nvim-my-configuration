local lazy = require 'lazy'

local plugins = {
  'windwp/nvim-ts-autotag',
  'windwp/nvim-autopairs',
  'folke/which-key.nvim',
  'folke/neodev.nvim',
  'j-hui/fidget.nvim',
  'rcarriga/nvim-notify',
  'mfussenegger/nvim-jdtls',
  'folke/neodev.nvim',
  {
    'folke/tokyonight.nvim',
    config = function()
      vim.cmd 'colorscheme tokyonight-night'
    end
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',
    }
  },
  {
    'L3MON4D3/LuaSnip',
    -- version = '<CurrentMajor>.*',
    -- build = 'make install_jsregexp',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'saadparwaiz1/cmp_luasnip'
    }
  },
  {
    'williamboman/mason.nvim',
    dependencies = {
      'williamboman/mason-lspconfig.nvim'
    }
  },
  { 
    'rcarriga/nvim-dap-ui', 
    dependencies = {
      'mfussenegger/nvim-dap', 
      'nvim-neotest/nvim-nio',
      'rcarriga/cmp-dap',
    }
  }
}

lazy.setup(plugins)
