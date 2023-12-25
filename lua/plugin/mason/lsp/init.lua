local utils = require 'core.utils'
local list = require 'plugin.mason.lsp.list'
local servers = list.servers
local servers_exclude = list.servers_exclude
local lspconfig = require 'lspconfig'
local mason = utils.requireAndTrack 'mason'
local neodev = utils.requireAndTrack 'neodev'
local on_attach = utils.on_attach
local mason_lspconfig = utils.requireAndTrack 'mason-lspconfig'

neodev.setup()

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

mason.setup()

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    if servers_exclude[server_name] then
      return
    end
    lspconfig[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
    }
  end,
}
