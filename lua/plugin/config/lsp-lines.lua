local utils = require('core.utils')
local lsp_lines = utils.requireAndTrack('lsp_lines')
local map = utils.map
map('', '<Leader>l', 'lsp_lines.toggle()')
