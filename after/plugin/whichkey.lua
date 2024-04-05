local whichkey = require 'which-key'
local mappings = require 'config.mappings'

whichkey.register(mappings, { prefix = '<space>' })
whichkey.setup({})
