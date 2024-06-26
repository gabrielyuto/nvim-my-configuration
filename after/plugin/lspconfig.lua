local lspconfig = require 'lspconfig'
local servers = require 'config.servers'
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, server in ipairs(servers) do
  if server == 'lua_ls' then
    lspconfig[server].setup({
      settings = {
        Lua = {
          completion = {
            callSnippet = 'Replace'
          }
        }
      }
    })
  else
    lspconfig[server].setup({
      capabilities = capabilities
    })
  end
end

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local whichkey = require 'which-key'

    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    whichkey.register({
      l = {
        name = 'LSP',
        d = { '<cmd>lua vim.lsp.buf.declaration()<cr>', 'Declaration' },
        D = { '<cmd>lua vim.lsp.buf.definition()<cr>', 'Definition' },
        h = { '<cmd>lua vim.lsp.buf.hover()<cr>', 'Hover' },
        i = { '<cmd>lua vim.lsp.buf.implementation()<cr>', 'Implementation' },
        s = { '<cmd>lua vim.lsp.buf.signature_help()<cr>', 'Signature help' },
        r = { '<cmd>lua vim.lsp.buf.rename()<cr>', 'Rename' },
        c = { '<cmd>lua vim.lsp.buf.code_action()<cr>', 'Code action' },
        f = { '<cmd>lua vim.lsp.buf.format()<cr>', 'Format file' },
        e = { '<cmd>lua vim.diagnostic.open_float()<cr>' },
      }
    }, { prefix = '<space>'})
  end,
})

local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = '●', -- Cou ld be '●', '▎', 'x'
  }
})
