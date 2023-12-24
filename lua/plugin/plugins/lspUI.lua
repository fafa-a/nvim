return {
    "jinzhongjia/LspUI.nvim",
    branch = "main",
    event = "VeryLazy",
    config = function()
        require("plugin.config.lspUI")
    end,
}
