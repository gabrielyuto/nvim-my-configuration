local lazy = require 'lazy'

local plugins = {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    config = function ()
      local tree = require 'nvim-tree'

      tree.setup()
    end
  }
}

lazy.setup(plugins)
