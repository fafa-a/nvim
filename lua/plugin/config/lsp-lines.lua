local utils = require 'core.utils'
local lsp_lines = utils.requireAndTrack 'lsp_lines'
lsp_lines.setup()
vim.keymap.set('', '<Leader>l', require('lsp_lines').toggle, { desc = 'Toggle lsp_lines' })
vim.notify 'here'
