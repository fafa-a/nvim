return {
    'roobert/search-replace.nvim',
    event = "VeryLazy",
    config = function()
        require('plugin.config.search-replace')
    end
}
