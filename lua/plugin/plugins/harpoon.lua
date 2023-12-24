return {
    'nvim-lua/plenary.nvim',
    'ThePrimeagen/harpoon',
    event = 'VeryLazy',
    config = function()
        require('plugin.config.harpoon')
    end
}
