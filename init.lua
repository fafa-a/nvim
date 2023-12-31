require 'core.base'
require 'core.highlights'
require 'core.maps'
require 'plugin'

vim.opt.background = 'light' -- default to dark or light style
vim.cmd.colorscheme 'monokai-nightasty'
vim.notify('Init', 'warn', { title = 'Init complete' })
