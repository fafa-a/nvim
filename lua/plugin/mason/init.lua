local utils = require 'core.utils'
local mason = utils.requireAndTrack 'mason'
local list = require 'plugin.mason.list'
local mason_registry = utils.requireAndTrack 'mason-registry'

mason.setup()

local ensure_installed = function()
  for _, name in ipairs(list) do
    if not mason_registry.is_installed(name) then
      local package = mason_registry.get_package(name)
      package:install()
    end
  end
end

mason_registry.refresh(vim.schedule_wrap(ensure_installed))

vim.notify('Mason LSP', 'warn', { title = 'Linter & formatter loaded' })
require 'plugin.mason.lsp'
