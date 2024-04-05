local map = vim.keymap.set

local mappings = {
  e = { '<cmd>NvimTreeToggle<cr>', 'File Explorer' },
  q = { '<cmd>quit<cr>', 'Quit' },
  Q = { '<cmd>quitall', 'Exit' },
  w = { '<cmd>update<cr>', 'Save' },
  s = {
    name = 'Search',
    f = { '<cmd>Telescope find_files<cr>', 'Files'},
    w = { '<cmd>Telescope live_grep<cr>', 'Words'},
    k = { '<cmd>Telescope keymaps<cr>', 'Keymaps'},
    h = { '<cmd>Telescope help_tags<cr>', 'Help tags' },
    c = { '<cmd>Telescope commands<cr>', 'Commands' },
  },
  p = {
    name = 'Package manager',
    p = { '<cmd>Mason<cr>', 'Open Package Manager'},
    i = { '<cmd>MasonInstall<cr>', 'Install Packages'},
    u = { '<cmd>MasonUpdate<cr>', 'Update Packages' },
    d = { '<cmd>MasonUninstallAll<cr>', 'Uninstall All Packages'},
  },
  d = {
    name = 'Debugger',
    b = { '<cmd>DapToggleBreakpoint<cr>', 'Breakpoint' },
    c = { '<cmd>DapContinue<cr>', 'Continue' },
    i = { '<cmd>DapStepInto<cr>', 'StepInto' },
    u = { '<cmd>DapStepOut<cr>', 'StepOut' },
    v = { '<cmd>DapStepOver<cr>', 'StepOver' },
    t = { '<cmd>DapTerminate<cr>', 'Terminate' },
    o = { '<cmd>lua require("dapui").open()<cr>', 'Open Debugger' }
  },
}

map('n', 'ss', '<cmd>split<cr>')
map('n', 'sv', '<cmd>vsplit<cr>')

return mappings
