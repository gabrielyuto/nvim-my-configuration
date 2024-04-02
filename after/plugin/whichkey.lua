local whichkey = require 'which-key'
local mappings = require 'mappings'

whichkey.register(mappings, { prefix = '<space>' })
whichkey.setup({})
