local utils = require("core.utils")
local lsp_installer = require('nvim-lsp-installer')

local on_attach = function(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  if client.name == 'tsserver' then
      client.resolved_capabilities.document_formatting = false
  end
end

lsp_installer.on_server_ready(function(server)
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  local has_server_opts, server_opts = pcall(require, 'lsp.setting.' .. server.name)
  if has_server_opts then
    opts = utils.merge_tb(opts, server_opts)
  end

  server:setup(opts)
end)

local signs = { Error = "", Warn = "", Hint = "", Info = "" }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
