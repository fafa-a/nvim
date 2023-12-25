require 'core.base'
require 'core.highlights'
require 'core.maps'
require 'plugin'

vim.notify = require 'notify'
vim.notify('Core & Plugins loaded', 'warn', { title = 'Setup complete' })
vim.opt.background = 'light' -- default to dark or light style
vim.cmd.colorscheme 'monokai-nightasty'
