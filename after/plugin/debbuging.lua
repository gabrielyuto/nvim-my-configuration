local dap = require 'dap'
local dapui = require 'dapui'

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

dap.adapters.java = function(callback)
  callback({
    type = 'server';
    host = '127.0.0.1';
    port = port;
  })
end

vim.keymap.set('n', '<Space>dt', dap.toggle_breakpoint, {})
