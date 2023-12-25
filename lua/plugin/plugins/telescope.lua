return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim", {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make"
    }, "nvim-telescope/telescope-project.nvim" },
    config = function()
        require('plugin.config.telescope')
    end
}
