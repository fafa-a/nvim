return {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    config = function()
        require("plugin.config.trouble")
    end
}
