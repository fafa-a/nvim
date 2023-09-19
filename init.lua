require("core.base")
require("core.highlights")
require("core.maps")

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn
        .system {'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', -- latest stable release
                 lazypath}
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup("plugins")

vim.notify = require("notify")
vim.notify("Core & Plugins loaded",  "warn",{title = "Setup complete"})
-- vim.opt.background = "light" -- default to dark or light style
vim.cmd.colorscheme 'github_light_high_contrast'
