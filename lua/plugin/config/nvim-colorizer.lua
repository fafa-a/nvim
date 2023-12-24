local utils = require("core.utils")
local colorizer = utils.requireAndTrack("nvim-colorizer")

colorizer.setup({
    "css",
    "javascript",
    "javascriptreact",
    html = {
        mode = "foreground"
    },
    "lua",
    "vim",
    "typescript",
    "typescriptreact",
    "json",
    "rust"
})
